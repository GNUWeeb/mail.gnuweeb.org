import type { User } from "./credential";

export interface ResponseAPI<Data> {
  code: number;
  res?: Data & {
    msg: string;
    renew_token?: RenewTokenResponse;
  };
}

export interface RenewTokenResponse {
  token: strign;
  token_exp_at: number;
}

export interface LoginResponse {
  token?: string;
  token_exp_at?: number;
  user_info?: User;
}
