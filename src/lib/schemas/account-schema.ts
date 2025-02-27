import { z } from "zod";

export const accountSchema = z
  .object({
    cur_pass: z.string(),
    new_pass: z.string(),
    retype_new_pass: z.string()
  })
  .refine(({ new_pass, retype_new_pass }) => new_pass === retype_new_pass, {
    message: "The new password does not match with the retyped one.",
    path: ["retype_new_pass"]
  });
