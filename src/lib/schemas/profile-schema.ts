import { z } from "zod";

export const profileSchema = z.object({
  avatar: z.instanceof(File).optional(),
  username: z.string().optional(),
  full_name: z.string().optional(),
  gender: z.string().optional()
});
