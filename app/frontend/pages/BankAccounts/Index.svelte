<script>
  import { page } from '@inertiajs/svelte';
  import { Card } from 'flowbite-svelte';

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
    <h3 class="text-lg font-semibold">Accounts</h3>
    <div class="container my-2 flex">
      <div>
        <p class="text-sm font-light">
          You have <span class="font-medium">3</span> private accounts, and
          <span class="font-medium">2</span> shared accounts
        </p>
      </div>
    </div>
  </div>
</div>
