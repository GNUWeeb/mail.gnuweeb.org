import { z } from "zod";

const MAX_FILE_SIZE = 10 * 1024 * 1024; // 10MB

const photoSchema = z.instanceof(File).refine((file) => file.size <= MAX_FILE_SIZE, {
  message: "File size must be less than 10MB"
});

export const profileSchema = z.object({
  photo: photoSchema.nullable(),
  username: z.string().optional(),
  full_name: z.string().min(1, "Full name is required"),
  ext_email: z.string().email("Invalid email format"),
  gender: z.enum(["m", "f"]),
  socials: z.object({
    github_username: z.string().optional().default(""),
    telegram_username: z.string().optional().default(""),
    twitter_username: z.string().optional().default(""),
    discord_username: z.string().optional().default("")
  }),
  password: z.string()
});
