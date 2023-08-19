<script>
  import { page } from '@inertiajs/svelte';
  import { Card } from 'flowbite-svelte';

  export let accounts = [];

  let user = $page.props.user;
</script>

<svelte:head>
  <title>Accounts</title>
</svelte:head>

{#each accounts as account}
  <Card href="/accounts/{account.id}" size="lg" class="mx-auto">
    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
      {account.name}
    </h5>
    <p class="font-normal text-gray-700 dark:text-gray-400 leading-tight">
      Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.
    </p>
  </Card>
{/each}
