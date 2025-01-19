import axios, { AxiosError } from "axios";
import { useAuth } from "./auth.svelte";
import type { RecordString, UseHttpProps } from "$typings";
import type { ResponseAPI } from "$typings/http";

const transformToFormData = (initialData: RecordString, requestData: RecordString | FormData) => {
  const formData = new FormData();

  let data = requestData;

  Object.keys(initialData).forEach((key) => {
    const value = initialData[key];

    if (Array.isArray(value)) {
      for (const val of value) {
        formData.append(
          key,
          typeof val === "object" && !(val instanceof File) ? JSON.stringify(val) : val
        );
      }
    } else {
      formData.append(key, value);
    }
  });

  data = formData;
  return data;
};

const GWM_API_URL = "https://mail.gnuweeb.org/api.php?action=";

export const useHttp = <Response = unknown, Formatter = unknown>({
  action,
  payload,
  params = {},
  method = "GET",
  timeout,
  beforeExecute = () => true,
  onComplete = () => true,
  formatter = () => true,
  onError = () => false,
  onFinally = () => false,
  isFormData = false,
  responseType
}: UseHttpProps<Response, Formatter>) => {
  const url = GWM_API_URL + action;
  let isLoading = $state<boolean>(true);
  let data = $state<Formatter | null>(null);

  formatter(data, null);

  let errors = $state<string | null>(null);
  let errorMessage = $state<string | null>(null);
  const auth = useAuth();

  const execute = async (replace?: {
    payload?: RecordString | null;
    params?: RecordString | null;
  }) => {
    if (!beforeExecute()) {
      onFinally();
      return;
    }

    isLoading = true;

    if (replace?.payload?.defaultPrevented != null) {
      replace!.payload = null;
    }

    const initialData: RecordString = replace?.payload ?? payload ?? {};
    let requestData: RecordString | FormData = initialData;

    if (isFormData) {
      requestData = transformToFormData(initialData, requestData);
    }

    return await axios({
      url: url,
      method,
      data: requestData,
      headers: {
        Authorization: `Bearer ${auth.token}`,
        "Content-Type": "application/json"
      },
      params: replace?.params ?? params,
      responseType: responseType,
      timeout: timeout ?? 60000
    })
      .then((res) => {
        isLoading = false;
        data = res?.data;

        onComplete(res);
        onFinally();
        formatter(data, res);

        errors = null;
        errorMessage = "";

        return res;
      })

      .catch((res: AxiosError<ResponseAPI<Response>>) => {
        isLoading = false;
        errors = res.stack!;

        const response = res.response?.data;

        errorMessage = typeof response?.res === "string" ? response.res : "Something went wrong!";

        onError(res.response!.data, errorMessage);
        onFinally();

        return res;
      });
  };

  const refetch = execute;

  return {
    data,
    isLoading,
    refetch,
    execute,
    errorMessage,
    errors
  };
};
