<svelte:head>
  <title>Profile</title>
</svelte:head>

<script>
  import {Avatar } from 'flowbite-svelte';
  export let user;
</script>

<div class="container">
  <Avatar src={user.avatar_url} size="xl" class="mx-auto my-8" />
  <h1 class="text-2xl font-semibold text-center">{user.first_name} {user.last_name}</h1>
  <h2 class="text-lg text-center font-light">{user.email}</h2>
</div>
