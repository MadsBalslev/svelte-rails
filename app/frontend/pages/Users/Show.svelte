<svelte:head>
  <title>Profile</title>
</svelte:head>

<script>
  export let user;
</script>

<h1 class="text-xl font-bold">Profile for {user.first_name}</h1>
