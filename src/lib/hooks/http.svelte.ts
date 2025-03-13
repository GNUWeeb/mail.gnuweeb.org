import { goto } from "$app/navigation";
import { PUBLIC_BASE_URL } from "$env/static/public";
import * as typing from "$typings";
import axios from "axios";
import type {
  AxiosError,
  AxiosRequestConfig,
  AxiosResponse,
  InternalAxiosRequestConfig
} from "axios";

const client = axios.create({
  baseURL: PUBLIC_BASE_URL
});

const http = async <T>(prop: AxiosRequestConfig) => {
  const onSuccess = (response: AxiosResponse<typing.ResponseAPI<T>>) => {
    return response;
  };

  const onError = (error: AxiosError) => {
    return Promise.reject(error);
  };

  return client(prop).then(onSuccess).catch(onError);
};

client.interceptors.request.use(
  (config: InternalAxiosRequestConfig) => {
    const accessToken = localStorage.getItem("gwm_token");

    config.params = { ...config.params, renew_token: 1 };

    if (accessToken && !config.headers.Authorization) {
      config.headers.Authorization = `Bearer ${accessToken}`;
    }

    return config;
  },
  (error: AxiosError) => {
    return Promise.reject(error);
  }
);

client.interceptors.response.use(
  (res: AxiosResponse) => {
    if (res?.data.res?.renew_token) {
      localStorage.setItem("gwm_token", res.data.res.renew_token.token);
      localStorage.setItem("gwm_token_exp_at", res.data.res.renew_token.token_exp_at);
    }
    return res;
  },
  async (err: AxiosError) => {
    const response = err.response as AxiosResponse<typing.ResponseAPI<typing.RenewTokenResponse>>;
    const status = response ? response.status : null;

    if (status === 401 && response.data.res?.msg === "Unauthorized") {
      localStorage.removeItem("gwm_token");
      localStorage.removeItem("gwm_token_exp_at");
      localStorage.removeItem("gwm_uinfo");
      goto("/");
    }

    return response;
  }
);

export default http;
