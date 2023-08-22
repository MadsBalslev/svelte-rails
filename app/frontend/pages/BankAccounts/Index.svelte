<script>
  import { page } from '@inertiajs/svelte';
  import { Button } from 'flowbite-svelte';
  import { Icon } from 'svelte-awesome-icons';
  import AccountCard from './components/AccountCard.svelte';

  export let accounts;

  let data = {
    labels: ['Red', 'Green', 'Yellow', 'Grey', 'Dark Grey'],
    datasets: [
      {
        data: [300, 50, 100, 40, 120]
      },
    ],
  };

  let user = $page.props.user;
</script>

<svelte:head>
  <title>Accounts</title>
</svelte:head>

<div class="container w-full flex flex-col gap-10 pb-20">
  <div id="overview">
    <div class="container my-2 flex">
      <div>
        <h3 class="text-lg font-semibold">Accounts</h3>
        <p class="text-sm font-light">
          You have <span class="font-medium">3</span> private accounts, and
          <span class="font-medium">2</span> shared accounts
        </p>
      </div>
      <div class="ml-auto">
        <Button>
          Add account<Icon name="circle-plus-solid" class="w-3.5 h-3.5 ml-2" />
        </Button>
      </div>
    </div>
    <div class="my-8 grid gap-8 sm:grid-cols-2 lg:grid-cols-3">
      {#each accounts as account}
        <AccountCard {account} />
      {/each}
    </div>
  </div>
</div>
