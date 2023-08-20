<script>
  import { useForm, inertia } from '@inertiajs/svelte';
  import { Input, Label, Helper, Button, Checkbox } from 'flowbite-svelte';
  import { Icon } from 'svelte-awesome-icons';


  let form = useForm({
    user: {
      email: null,
      password: null,
      remember_me: false,
    },
  });

  function submit() {
    $form.post('/login');
  }
</script>

<svelte:head>
  <title>Login</title>
</svelte:head>

<form class="w-full max-w-md mx-auto flex flex-col space-y-6" on:submit|preventDefault={submit}>
  <h3 class="text-xl font-medium text-gray-900 dark:text-white">Sign in</h3>
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
      <Helper class="mt-2" color="green">
        <span class="font-medium">Oh no!</span>
        {$form.errors.email}
      </Helper>
    {/if}
  </div>
  <div class="mb-6">
    <Label for="password" class="space-y-2">Password</Label>
    <Input type="password" id="password" placeholder="•••••••••" required bind:value={$form.user.password} />
    {#if $form.errors.password}
      <Helper class="mt-2" color="green">
        <span class="font-medium">Oh no!</span>
        {$form.errors.password}
      </Helper>
    {/if}
  </div>
  <div class="flex items-start">
    <Checkbox bind:checked={$form.user.remember_me}>Remember me</Checkbox>
    <a href="/" class="ml-auto text-sm text-primary-700 hover:underline dark:text-primary-500"
      >Forgot password?</a
    >
  </div>
  <Button type="submit" class="w-full" disabled={$form.processing}>Login</Button>
  <div class="text-sm font-medium text-gray-500 dark:text-gray-300">
    Not registered? <a href="/signup" class="text-primary-700 hover:underline dark:text-primary-500" use:inertia>
      Create account
    </a>
  </div>
</form>
<div class="inline-flex items-center justify-center w-full">
  <hr class="w-64 h-px bg-gray-200 border-0 dark:bg-gray-700">
  <span class="absolute px-3 font-medium text-gray-900 -translate-x-1/2 bg-white left-1/2 dark:text-white dark:bg-gray-900">or</span>
</div>
<form class="w-full max-w-md mx-auto flex flex-col space-y-6" action="/users/auth/github" method="post">
  <input type="hidden" name="authenticity_token" value={document.querySelector('meta[name="csrf-token"]').content} />
  <Button color="dark" type="submit">
    <Icon name="github" class="mr-2" />
    Login with GitHub
  </Button>
</form>
