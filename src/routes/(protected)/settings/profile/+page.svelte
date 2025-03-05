<script lang="ts">
  import { useAuth } from "$lib/hooks/auth.svelte";
  import { superForm } from "sveltekit-superforms";
  import { zodClient } from "sveltekit-superforms/adapters";
  import { profileSchema } from "$lib/schemas/profile-schema";
  import Pencil from "lucide-svelte/icons/pencil";
  import * as Avatar from "$lib/components/ui/avatar";
  import * as Form from "$lib/components/ui/form";
  import * as RadioGroup from "$lib/components/ui/radio-group";
  import Input from "$components/ui/input/input.svelte";
  import Label from "$components/ui/label/label.svelte";

  let { data } = $props();

  const auth = useAuth();

  let avatarImage = $state<string>();

  const form = superForm(data.form, {
    SPA: true,
    validators: zodClient(profileSchema)
  });

  const getShortName = () => {
    const fullName = auth.user?.full_name ?? "";
    const match = fullName.match(/\b(\w)/g) ?? [];
    return match.slice(0, 2).join("");
  };

  const handleAvatar = (e: any) => {
    const file = e.srcElement.files[0];
    const reader = new FileReader();
    reader.readAsDataURL(file);

    reader.onload = function () {
      avatarImage = reader.result as string;
    };
  };

  const { form: formData, errors, submitting, constraints, enhance } = form;
</script>

<form
  use:enhance
  class="flex w-full max-w-5xl flex-col gap-y-8 lg:flex-row lg:justify-between lg:gap-x-8 lg:gap-y-0"
>
  <div class="flex w-full justify-center lg:hidden">
    <Form.Field {form} name="avatar" class="relative">
      <Form.Control>
        {#snippet children({ props })}
          <Form.Label for="avatar" class="cursor-pointer">
            <Avatar.Root class="size-40">
              <Avatar.Image src={avatarImage} alt="@{auth.user?.username}" />
              <Avatar.Fallback class="text-xl">{getShortName()}</Avatar.Fallback>
            </Avatar.Root>
            <div
              class="absolute bottom-3 left-0 flex items-center gap-x-1 rounded-lg bg-foreground px-2 py-1 text-primary-foreground"
            >
              <Pencil class="size-4" />
              <span class="text-xs font-medium">Edit</span>
            </div>
          </Form.Label>
          <Input
            type="file"
            accept="image/png,image/jpeg"
            {...props}
            aria-invalid={$errors.avatar ? "true" : undefined}
            bind:value={$formData.avatar}
            disabled={$submitting}
            {...$constraints.avatar}
            class="hidden"
            onchange={handleAvatar}
          />
        {/snippet}
      </Form.Control>
    </Form.Field>
  </div>

  <div class="flex w-full max-w-3xl flex-col space-y-5">
    <Form.Field {form} name="username">
      <Form.Control>
        {#snippet children({ props })}
          <Form.Label>Username</Form.Label>
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

    <Form.Field {form} name="full_name">
      <Form.Control>
        {#snippet children({ props })}
          <Form.Label>Full Name</Form.Label>
          <Input
            {...props}
            aria-invalid={$errors.full_name ? "true" : undefined}
            bind:value={$formData.full_name}
            placeholder="Your full name"
            {...$constraints.full_name}
            disabled
          />
        {/snippet}
      </Form.Control>
    </Form.Field>

    <Form.Field {form} name="gender">
      <Form.Control>
        {#snippet children({ props })}
          <Form.Label>Gender</Form.Label>
          <RadioGroup.Root
            {...props}
            aria-invalid={$errors.gender ? "true" : undefined}
            bind:value={$formData.gender}
            placeholder="Your full name"
            {...$constraints.gender}
            disabled
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
        {/snippet}
      </Form.Control>
    </Form.Field>
  </div>

  <div class="hidden lg:block">
    <Form.Field {form} name="avatar" class="relative">
      <Form.Control>
        {#snippet children({ props })}
          <Form.Label for="avatar" class="cursor-pointer">
            <Avatar.Root class="lg:size-40 xl:size-52">
              <Avatar.Image src={avatarImage} alt="@{auth.user?.username}" />
              <Avatar.Fallback class="lg:text-xl xl:text-3xl">{getShortName()}</Avatar.Fallback>
            </Avatar.Root>
            <div
              class="absolute bottom-3 left-0 flex items-center gap-x-1 rounded-lg bg-foreground px-2 py-1 text-primary-foreground xl:left-2.5"
            >
              <Pencil class="size-4" />
              <span class="text-xs font-medium">Edit</span>
            </div>
          </Form.Label>
          <Input
            type="file"
            accept="image/png,image/jpeg"
            {...props}
            aria-invalid={$errors.avatar ? "true" : undefined}
            bind:value={$formData.avatar}
            disabled={$submitting}
            {...$constraints.avatar}
            class="hidden"
            onchange={handleAvatar}
          />
        {/snippet}
      </Form.Control>
    </Form.Field>
  </div>
</form>
