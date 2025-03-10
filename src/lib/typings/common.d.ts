import type { Icon as IconType } from "lucide-svelte";

export type RecordString = Record<string, string>;

export enum Gender {
  MALE = "m",
  FEMALE = "f"
}

export enum IsActive {
  ACTIVE = "1",
  INACTIVE = "0"
}

export interface Navigations {
  name: string;
  description?: string;
  icon?: typeof IconType;
  url: string;
  disabled?: boolean;
  items?: Navigations[]
}

export interface LabelAndValue {
  label: string;
  value: string;
}

export interface MailConfig {
  incoming: LabelAndValue[];
  outgoing: LabelAndValue[];
}
