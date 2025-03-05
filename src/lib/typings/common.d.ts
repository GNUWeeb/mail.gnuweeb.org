import type { Icon as IconType } from "lucide-svelte";

export type RecordString = Record<string, string>;

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
