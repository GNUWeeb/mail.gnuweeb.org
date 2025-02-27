<script lang="ts">
  import { accountSchema } from "$lib/schemas/account-schema";
  import { setError, superForm } from "sveltekit-superforms";
  import { zodClient } from "sveltekit-superforms/adapters";
  import { toast } from "svelte-sonner";
  import * as Form from "$components/ui/form";
  import InputPassword from "$components/ui/input/input-password.svelte";
  import Button from "$components/ui/button/button.svelte";
  import http from "$lib/hooks/http.svelte";

  let { data } = $props();

  const form = superForm(data.form, {
    SPA: true,
    validators: zodClient(accountSchema),
    validationMethod: "oninput",

    async onUpdate({ form }) {
      const res = await http<string>({
        params: { action: "change_password" },
        method: "POST",
        data: form.data
      });

      const message = res.data.res as string;

      if (res.status >= 400) {
        if (message.includes("current password is wrong")) {
          setError(form, "cur_pass", message);
        } else {
          setError(form, "new_pass", message);
          setError(form, "retype_new_pass", message);
        }
      } else {
        reset();
        toast.info(message);
      }
    }
  });

  const { form: formData, errors, submitting, constraints, enhance, reset } = form;

  const isSubmittable = $derived(
    Boolean($formData.cur_pass && $formData.new_pass && $formData.retype_new_pass)
  );

  const isError = $derived(
    Boolean($errors.cur_pass || $errors.new_pass || $errors.retype_new_pass)
  );
</script>

<h1>Change Password</h1><hr/>
<form use:enhance class="space-y-5">
  <Form.Field {form} name="cur_pass">
    <Form.Control>
      {#snippet children({ props })}
        <Form.Label>Current Password</Form.Label>
        <InputPassword
          {...props}
          aria-invalid={$errors.cur_pass ? "true" : undefined}
          bind:value={$formData.cur_pass}
          placeholder="Enter current password"
          disabled={$submitting}
          {...$constraints.cur_pass}
        />
        <Form.FieldErrors />
      {/snippet}
    </Form.Control>
  </Form.Field>

  <Form.Field {form} name="new_pass">
    <Form.Control>
      {#snippet children({ props })}
        <Form.Label>New Password</Form.Label>
        <InputPassword
          {...props}
          aria-invalid={$errors.new_pass ? "true" : undefined}
          bind:value={$formData.new_pass}
          placeholder="Enter new password"
          disabled={$submitting}
          {...$constraints.new_pass}
        />
        <Form.FieldErrors />
      {/snippet}
    </Form.Control>
  </Form.Field>

  <Form.Field {form} name="retype_new_pass">
    <Form.Control>
      {#snippet children({ props })}
        <Form.Label>Re-type New Password</Form.Label>
        <InputPassword
          {...props}
          aria-invalid={$errors.retype_new_pass ? "true" : undefined}
          bind:value={$formData.retype_new_pass}
          placeholder="Re-type new password"
          disabled={$submitting}
          {...$constraints.retype_new_pass}
        />
        <Form.FieldErrors />
      {/snippet}
    </Form.Control>
  </Form.Field>

  <Button type="submit" class="px-8" disabled={$submitting || !isSubmittable || isError}>
    Submit
  </Button>
</form>
