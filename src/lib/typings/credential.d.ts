export interface User {
  user_id: number;
  full_name: string;
  gender: Gender;
  username: string;
  ext_email: string;
  role: string;
  is_active: IsActive | boolean;
  socials: {
    github_username: string;
    telegram_username: string;
    twitter_username: string;
    discord_username: string;
  };
  photo: string;
}
