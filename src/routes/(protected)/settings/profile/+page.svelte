<script lang="ts">
  import { useAuth } from "$lib/hooks/auth.svelte";
  import { setError, setMessage, superForm } from "sveltekit-superforms";
  import { zodClient } from "sveltekit-superforms/adapters";
  import { profileSchema } from "$lib/schemas/profile-schema";
  import Pencil from "lucide-svelte/icons/pencil";
  import * as Avatar from "$lib/components/ui/avatar";
  import * as Form from "$lib/components/ui/form";
  import * as RadioGroup from "$lib/components/ui/radio-group";
  import * as Popover from "$lib/components/ui/popover";
  import * as Dialog from "$lib/components/ui/dialog";
  import Input from "$components/ui/input/input.svelte";
  import Label from "$components/ui/label/label.svelte";
  import IconGithub from "$components/icons/icon-github.svelte";
  import IconTelegram from "$components/icons/icon-telegram.svelte";
  import IconTwitter from "$components/icons/icon-twitter.svelte";
  import IconDiscord from "$components/icons/icon-discord.svelte";
  import Loading from "$components/customs/loading.svelte";
  import Button from "$components/ui/button/button.svelte";
  import http from "$lib/hooks/http.svelte.js";
  import * as typing from "$typings";
  import { toast } from "svelte-sonner";
  import InputPassword from "$components/ui/input/input-password.svelte";
  import Seo from "$components/customs/seo.svelte";

  let { data } = $props();
  let showModalConfirmation = $state(false);

  const form = superForm(data.form, {
    SPA: true,
    resetForm: false,
    validators: zodClient(profileSchema),
    dataType: "json",

    async onUpdate({ form }) {
      const formData = new FormData();
      if (form.data.photo) {
        formData.append("photo", form.data.photo);
      }
      formData.append("full_name", form.data.full_name);
      formData.append("ext_email", form.data.ext_email);
      formData.append("gender", form.data.gender);
      formData.append("password", form.data.password);
      if (form.data.socials.github_username) {
        formData.append("socials[github_username]", form.data.socials.github_username);
      }
      if (form.data.socials.telegram_username) {
        formData.append("socials[telegram_username]", form.data.socials.telegram_username);
      }
      if (form.data.socials.twitter_username) {
        formData.append("socials[twitter_username]", form.data.socials.twitter_username);
      }
      if (form.data.socials.discord_username) {
        formData.append("socials[discord_username]", form.data.socials.discord_username);
      }

      const {
        data: { res },
        status
      } = await http<typing.ResponseAPI<{}>>({
        params: { action: "set_user_info" },
        method: "POST",
        data: formData
      });

      if (status === 200) {
        const { data } = await http<{ user_info: typing.User }>({
          params: { action: "get_user_info" }
        });

        auth.save({
          token: data.res?.renew_token?.token,
          token_exp_at: data.res?.renew_token?.token_exp_at,
          user_info: data.res?.user_info
        });

        toast.info("Success update profile", {
          description: data.res?.msg ?? "Invalid credential, please login again."
        });
      } else {
        if (res?.msg.includes("full_name")) {
          setError(form, "full_name", res?.msg);
        }

        if (res?.msg.includes("ext_email")) {
          setError(form, "ext_email", res?.msg);
        }

        if (res?.msg.includes("gender")) {
          setError(form, "gender", res?.msg);
        }

        if (res?.msg.includes("password")) {
          setError(form, "password", res?.msg);
        }

        toast.error("Failed to update profile", {
          description: res?.msg ?? "Invalid credential, please login again."
        });
      }
    }
  });

  const { form: formData, errors, submitting, constraints, enhance, submit } = form;

  const auth = useAuth();

  let avatarImg = $state(data.avatar);
  const avatar = $derived(avatarImg);

  const getShortName = () => {
    const fullName = auth.user?.full_name ?? "";
    const match = fullName.match(/\b(\w)/g) ?? [];
    return match.slice(0, 2).join("");
  };

  const handleOpenModal = (e: boolean) => {
    showModalConfirmation = e;
  };

  const handleAvatar = (event: Event) => {
    const input = event.target as HTMLInputElement;
    const file = input.files?.[0];
    if (!file) return;

    $formData.photo = file;

    const reader = new FileReader();
    reader.onload = () => {
      avatarImg = reader.result as string;
    };
    reader.readAsDataURL(file);
  };

  const handleSubmit = () => {
    submit();
    handleOpenModal(false);
  };

  const isSubmittable = $derived(
    Boolean($formData.full_name && $formData.ext_email && $formData.gender)
  );

  const isError = $derived(Boolean($errors.full_name || $errors.ext_email || $errors.gender));
</script>

<Seo title="Your profile - GNU/Weeb Mail" description="Update your profile." />

<Dialog.Root open={showModalConfirmation} onOpenChange={handleOpenModal}>
  <form use:enhance class="flex flex-col gap-5" enctype="multipart/form-data">
    <div
      class="flex w-full max-w-5xl flex-col gap-y-8 lg:flex-row lg:justify-between lg:gap-x-8 lg:gap-y-0"
    >
      <div class="flex w-full justify-center lg:hidden">
        <Form.Field {form} name="photo" class="relative text-center">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label for="photo" class="cursor-pointer space-y-2">
                <span>Profile picture</span>
                <Avatar.Root class="size-40">
                  <Avatar.Image src={avatar} alt="@{auth.user?.username}" />
                  <Avatar.Fallback class="text-xl">
                    {#if !Boolean(avatar)}
                      {getShortName()}
                    {:else}
                      <Loading class="size-7 text-black" />
                    {/if}
                  </Avatar.Fallback>
                </Avatar.Root>
                <Popover.Root>
                  <Popover.Trigger
                    class="absolute bottom-3 left-0 flex h-max w-max items-center gap-x-1 rounded-lg border border-input bg-background px-2 py-1 hover:bg-accent hover:text-accent-foreground"
                  >
                    <Pencil class="size-4" />
                    <span class="text-xs font-medium">Edit</span>
                  </Popover.Trigger>
                  <Popover.Content class="flex max-w-[8rem] flex-col gap-y-1 p-1 text-sm">
                    <Button variant="ghost" class="h-max w-full px-0 py-0">
                      <Form.Label
                        for="photo"
                        class="w-full cursor-pointer rounded-md px-2 py-1.5 text-start text-xs"
                      >
                        Upload...
                      </Form.Label>
                    </Button>
                    <Button
                      variant="ghost"
                      class="flex h-max w-full justify-start px-2 py-1.5 text-xs"
                    >
                      Delete
                    </Button>
                  </Popover.Content>
                </Popover.Root>
              </Form.Label>
              <Input
                type="file"
                accept="image/png,image/jpeg"
                {...props}
                aria-invalid={$errors.photo ? "true" : undefined}
                disabled={$submitting}
                onchange={handleAvatar}
                {...$constraints.photo}
                class="hidden"
              />
            {/snippet}
          </Form.Control>
        </Form.Field>
      </div>

      <div class="flex w-full max-w-3xl flex-col space-y-5">
        <Form.Field {form} name="username">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label for="username">Username</Form.Label>
              <Input
                {...props}
                aria-invalid={$errors.username ? "true" : undefined}
                bind:value={$formData.username}
                placeholder="@username"
                {...$constraints.username}
                disabled
              />
              <Form.Description>This is your GNU/Weeb email username.</Form.Description>
            {/snippet}
          </Form.Control>
        </Form.Field>

        <Form.Field {form} name="ext_email">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label for="ext_email">External Email</Form.Label>
              <Input
                {...props}
                aria-invalid={$errors.ext_email ? "true" : undefined}
                bind:value={$formData.ext_email}
                placeholder="Your external email address"
                disabled={$submitting}
                {...$constraints.ext_email}
              />
              <Form.FieldErrors />
              <Form.Description>
                This is your external email address e.g username@gmail.com
              </Form.Description>
            {/snippet}
          </Form.Control>
        </Form.Field>

        <Form.Field {form} name="full_name">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label for="full_name">Full Name</Form.Label>
              <Input
                {...props}
                aria-invalid={$errors.full_name ? "true" : undefined}
                bind:value={$formData.full_name}
                placeholder="Your full name"
                disabled={$submitting}
                {...$constraints.full_name}
              />
              <Form.FieldErrors />
              <Form.Description>You full name must be your real name.</Form.Description>
            {/snippet}
          </Form.Control>
        </Form.Field>

        <Form.Field {form} name="gender">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label for="gender">Gender</Form.Label>
              <RadioGroup.Root
                {...props}
                aria-invalid={$errors.gender ? "true" : undefined}
                bind:value={$formData.gender}
                placeholder="Your full name"
                disabled={$submitting}
                {...$constraints.gender}
              >
                <div class="flex items-center space-x-2">
                  <RadioGroup.Item value="m" id="m" />
                  <Label for="m">Male</Label>
                </div>
                <div class="flex items-center space-x-2">
                  <RadioGroup.Item value="f" id="f" />
                  <Label for="f">Female</Label>
                </div>
              </RadioGroup.Root>
              <Form.FieldErrors />
              <Form.Description>
                Your real gender, <b><u><i>NO LGBT</i></u></b>.
              </Form.Description>
            {/snippet}
          </Form.Control>
        </Form.Field>

        <div class="space-y-1">
          <span
            class="select-none text-sm font-medium {Boolean($errors.socials) && 'text-destructive'}"
          >
            Social Accounts
          </span>
          <div class="flex items-center gap-x-2">
            <IconGithub href="https://github.com/{$formData.socials.github_username}" />
            <Form.Field {form} name="socials.github_username" class="w-full">
              <Form.Control>
                {#snippet children({ props })}
                  <Input
                    {...props}
                    aria-invalid={$errors.socials?.github_username ? "true" : undefined}
                    bind:value={$formData.socials.github_username}
                    placeholder="Your github username"
                    disabled={$submitting}
                    {...$constraints.socials?.github_username}
                  />
                {/snippet}
              </Form.Control>
            </Form.Field>
          </div>
          <div class="flex items-center gap-x-2">
            <IconTelegram href="https://{$formData.socials.telegram_username}.t.me" />
            <Form.Field {form} name="socials.telegram_username" class="w-full">
              <Form.Control>
                {#snippet children({ props })}
                  <Input
                    {...props}
                    aria-invalid={$errors.socials?.telegram_username ? "true" : undefined}
                    bind:value={$formData.socials.telegram_username}
                    placeholder="Your telegram username"
                    disabled={$submitting}
                    {...$constraints.socials?.telegram_username}
                  />
                {/snippet}
              </Form.Control>
            </Form.Field>
          </div>
          <div class="flex items-center gap-x-2">
            <IconTwitter href="https://x.com/{$formData.socials.twitter_username}" />
            <Form.Field {form} name="socials.twitter_username" class="w-full">
              <Form.Control>
                {#snippet children({ props })}
                  <Input
                    {...props}
                    aria-invalid={$errors.socials?.twitter_username ? "true" : undefined}
                    bind:value={$formData.socials.twitter_username}
                    placeholder="Your twitter username"
                    disabled={$submitting}
                    {...$constraints.socials?.twitter_username}
                  />
                {/snippet}
              </Form.Control>
            </Form.Field>
          </div>
          <div class="flex items-center gap-x-2">
            <IconDiscord />
            <Form.Field {form} name="socials.discord_username" class="w-full">
              <Form.Control>
                {#snippet children({ props })}
                  <Input
                    {...props}
                    aria-invalid={$errors.socials?.discord_username ? "true" : undefined}
                    bind:value={$formData.socials.discord_username}
                    placeholder="Your discord username"
                    disabled={$submitting}
                    {...$constraints.socials?.discord_username}
                  />
                {/snippet}
              </Form.Control>
            </Form.Field>
          </div>
        </div>
      </div>

      <div class="hidden lg:block">
        <Form.Field {form} name="photo" class="relative text-center">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label for="photo" class="cursor-pointer space-y-2">
                <span>Profile picture</span>
                <Avatar.Root class="lg:size-40 xl:size-52">
                  <Avatar.Image src={avatar} alt="@{auth.user?.username}" />
                  <Avatar.Fallback class="lg:text-xl xl:text-3xl">
                    {#if !Boolean(avatar)}
                      {getShortName()}
                    {:else}
                      <Loading class="size-10 text-black" />
                    {/if}
                  </Avatar.Fallback>
                </Avatar.Root>
                <Popover.Root>
                  <Popover.Trigger
                    class="absolute bottom-3 left-0 flex h-max w-max items-center gap-x-1 rounded-lg border border-input bg-background px-2 py-1 hover:bg-accent hover:text-accent-foreground xl:left-2.5"
                  >
                    <Pencil class="size-4" />
                    <span class="text-xs font-medium">Edit</span>
                  </Popover.Trigger>
                  <Popover.Content class="flex max-w-[8rem] flex-col gap-y-1 p-1 text-sm">
                    <Button variant="ghost" class="h-max w-full px-0 py-0">
                      <Form.Label
                        for="photo"
                        class="w-full cursor-pointer rounded-md px-2 py-1.5 text-start text-xs"
                      >
                        Upload...
                      </Form.Label>
                    </Button>
                    <Button
                      variant="ghost"
                      class="flex h-max w-full justify-start px-2 py-1.5 text-xs"
                    >
                      Delete
                    </Button>
                  </Popover.Content>
                </Popover.Root>
              </Form.Label>
              <Input
                type="file"
                accept="image/png,image/jpeg"
                {...props}
                aria-invalid={$errors.photo ? "true" : undefined}
                disabled={$submitting}
                onchange={handleAvatar}
                {...$constraints.photo}
                class="hidden"
              />
            {/snippet}
          </Form.Control>
        </Form.Field>
      </div>
    </div>

    <Dialog.Trigger>
      {#snippet child({ props })}
        <Button
          type="button"
          class="w-max px-5"
          disabled={$submitting || !isSubmittable || isError}
          {...props}
        >
          Update profile {isSubmittable}
        </Button>
      {/snippet}
    </Dialog.Trigger>

    <Dialog.Content class="sm:max-w-[425px]">
      <Dialog.Header>
        <Dialog.Title>Update Profile Confirmation</Dialog.Title>
        <Dialog.Description>Confirm changes to your profile here.</Dialog.Description>
      </Dialog.Header>
      <div>
        <Form.Field {form} name="password" class="w-full">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label for="password">Password</Form.Label>
              <InputPassword
                {...props}
                aria-invalid={$errors.password ? "true" : undefined}
                bind:value={$formData.password}
                placeholder="Enter password"
                disabled={$submitting}
                {...$constraints.password}
              />
              <Form.Description>
                Your password is required to make changes to your profile.
              </Form.Description>
            {/snippet}
          </Form.Control>
        </Form.Field>
      </div>
      <Dialog.Footer>
        <Button type="submit" onclick={handleSubmit}>Confirm</Button>
      </Dialog.Footer>
    </Dialog.Content>
  </form>
</Dialog.Root>
