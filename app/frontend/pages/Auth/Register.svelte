<script>
  import { useForm } from '@inertiajs/svelte';
  import { Input, Label, Helper, Button } from 'flowbite-svelte';
  import { Icon } from 'svelte-awesome-icons';

  let form = useForm({
    user: {
      email: null,
      password: null,
      password_confirmation: null,
      first_name: null,
      last_name: null,
    },
  });

  function submit() {
    $form.post('/signup');
  }
</script>

<svelte:head>
  <title>Login</title>
</svelte:head>

<form class="w-full max-w-md mx-auto flex flex-col space-y-6" on:submit|preventDefault={submit}>
  <h3 class="text-xl font-medium text-gray-900 dark:text-white">Sign up</h3>
  <div class="grid gap-6 mb-6 md:grid-cols-2">
    <div>
      <Label for="first_name" class="mb-2">First name</Label>
      <Input type="text" id="first_name" placeholder="John" bind:value={$form.user.first_name} required />
      {#if $form.errors.first_name}
        <Helper class="mt-2" color="red">
          <span class="font-medium">Oh no!</span>
          {$form.errors.first_name}
        </Helper>
      {/if}
    </div>
    <div>
      <Label for="last_name" class="mb-2">Last name</Label>
      <Input type="text" id="last_name" placeholder="Doe" bind:value={$form.user.last_name} required />
      {#if $form.errors.last_name}
        <Helper class="mt-2" color="red">
          <span class="font-medium">Oh no!</span>
          {$form.errors.last_name}
        </Helper>
      {/if}
    </div>
  </div>
  <div class="mb-6">
    <Label for="email" class="space-y-2">Email</Label>
    <Input
      type="email"
      id="email"
      placeholder="john.doe@company.com"
      required
      bind:value={$form.user.email}
    />
    {#if $form.errors.email}
      <Helper class="mt-2" color="red">
        <span class="font-medium">Oh no!</span>
        {$form.errors.email}
      </Helper>
    {/if}
  </div>
  <div class="mb-6">
    <Label for="password" class="space-y-2">Password</Label>
    <Input type="password" id="password" placeholder="•••••••••" required bind:value={$form.user.password} />
    {#if $form.errors.password}
      <Helper class="mt-2" color="red">
        <span class="font-medium">Oh no!</span>
        {$form.errors.password}
      </Helper>
    {/if}
  </div>
  <div class="mb-6">
    <Label for="password" class="space-y-2">Password</Label>
    <Input
      type="password"
      id="password_confirmation"
      placeholder="•••••••••"
      required
      bind:value={$form.user.password_confirmation}
    />
    {#if $form.errors.password_confirmation}
      <Helper class="mt-2" color="red">
        <span class="font-medium">Oh no!</span>
        {$form.errors.password_confirmation}
      </Helper>
    {/if}
  </div>
  <Button type="submit" class="w-full" disabled={$form.processing}>Sign up!</Button>
</form>
<div class="inline-flex items-center justify-center w-full">
  <hr class="w-64 h-px bg-gray-200 border-0 dark:bg-gray-700">
  <span class="absolute px-3 font-medium text-gray-900 -translate-x-1/2 bg-white left-1/2 dark:text-white dark:bg-gray-900">or</span>
</div>
<form class="w-full max-w-md mx-auto flex flex-col space-y-6" action="/users/auth/github" method="post">
  <input type="hidden" name="authenticity_token" value={document.querySelector('meta[name="csrf-token"]').content} />
  <Button color="dark" type="submit">
    <Icon name="github" class="mr-2" />
    Sign up with GitHub
  </Button>
</form>
