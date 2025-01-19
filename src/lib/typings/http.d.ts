import type { AxiosRequestConfig, AxiosResponse } from "axios";
import type { RecordString } from "./common";
import type { User } from "./credential";

interface ResponseInterface<Data> {
  code: number;
  res?: Data;
}

type ResponseAPI<ArrayType = null> = ResponseInterface<ArrayType>;

export type UseHttpProps<Response, Formatter> = AxiosRequestConfig & {
  action: string;
  payload?: RecordString;
  isFormData?: boolean;
  beforeExecute?: () => boolean;
  onComplete?: (resp: AxiosResponse<ResponseAPI<Response>>) => void;
  formatter?: (data: Formatter | null, resp: AxiosResponse<ResponseAPI<Response>> | null) => void;
  onError?: (data: ResponseAPI<Response>, msg?: string | null) => void;
  onFinally?: () => void;
};

export interface LoginResponse {
  token: string;
  token_exp_at: number;
  user_info?: User | null;
}
