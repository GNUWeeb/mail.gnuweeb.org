<script lang="ts">
  import Loading from "$components/customs/loading.svelte";
  import { Button } from "$components/ui/button";
  import * as Card from "$components/ui/card";
  import * as Form from "$components/ui/form";
  import { Input } from "$components/ui/input";
  import InputPassword from "$components/ui/input/input-password.svelte";
  import { useAuth } from "$lib/hooks/auth.svelte";
  import { useHttp } from "$lib/hooks/http.svelte";
  import { loginSchema } from "$lib/schemas/login";
  import type { LoginResponse, User } from "$typings";
  import { superForm, setError, setMessage } from "sveltekit-superforms";
  import { zod } from "sveltekit-superforms/adapters";

  let { data } = $props();

  const auth = useAuth();

  const form = superForm(data.form, {
    SPA: true,
    validators: zod(loginSchema),

    async onUpdate({ form }) {
      const http = useHttp<LoginResponse, User>({
        action: "login",
        method: "POST",

        payload: {
          user: form.data.username_or_email,
          pass: form.data.password
        },

        formatter(data, resp) {
          data = resp?.data.res?.user_info!;
        },

        onComplete(resp) {
          auth.save(resp.data.res!);
        },

        onError(_, errorMessage) {
          setError(form, "username_or_email", "");
          setError(form, "password", "");
          setMessage(form, errorMessage);
        }
      });

      await http.execute();
    }
  });

  const isError = () => Boolean($errors.username_or_email && $errors.password);
  const isValid = () => Boolean($formData.username_or_email && $formData.password);

  const { form: formData, errors, message, submitting, constraints, enhance } = form;
</script>

<div class="mx-auto flex min-h-screen w-full items-center justify-center px-3 py-2">
  <Card.Root class="w-full max-w-lg">
    <form method="POST" use:enhance>
      <Card.Header class="flex items-center justify-center space-y-1">
        <Card.Title class="text-2xl">GNU/Weeb Mail Login</Card.Title>
        <Card.Description>Proceed login to manager your email account</Card.Description>

        {#if isError()}
          <span class="text-sm font-medium text-destructive">
            {$message}
          </span>
        {/if}
      </Card.Header>

      <Card.Content class="grid gap-4">
        <Form.Field {form} name="username_or_email" class="grid gap-1">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label>Username or Email</Form.Label>
              <Input
                {...props}
                aria-invalid={$errors.username_or_email ? "true" : undefined}
                bind:value={$formData.username_or_email}
                placeholder="username@gnuweeb.org"
                disabled={$submitting}
                {...$constraints.username_or_email}
              />
              <Form.FieldErrors />
            {/snippet}
          </Form.Control>
        </Form.Field>

        <Form.Field {form} name="password" class="grid gap-2">
          <Form.Control>
            {#snippet children({ props })}
              <Form.Label>Password</Form.Label>
              <InputPassword
                {...props}
                aria-invalid={$errors.password ? "true" : undefined}
                bind:value={$formData.password}
                placeholder="Enter password"
                disabled={$submitting}
                {...$constraints.password}
              />
              <Form.FieldErrors />
            {/snippet}
          </Form.Control>
        </Form.Field>
      </Card.Content>

      <Card.Footer>
        <Button
          type="submit"
          class="mt-3 flex w-full gap-x-2"
          disabled={$submitting || !isValid() || isError()}
        >
          <span>Login</span>
          {#if $submitting}
            <Loading />
          {/if}
        </Button>
      </Card.Footer>
    </form>
  </Card.Root>
</div>
