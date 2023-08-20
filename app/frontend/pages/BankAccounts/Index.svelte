<script>
  import { page } from '@inertiajs/svelte';
  import { Card } from 'flowbite-svelte';
  import PieChart from '@/components/PieChart.svelte';

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

<div class="container mt-4 w-full mx-auto">
  <div class="flex flex-wrap gap-2 justify-center w-full">
    <Card class="flex-1">
      <h5 class="text-center mb-2 text-2xl tracking-tight text-gray-900 dark:text-white font-medium">
        August
      </h5>
      <PieChart {data} />
      <p class="my-4 text-center font-medium text-red-500">-3201,24kr</p>
    </Card>
    <Card class="flex-1">
      <h5 class="text-center mb-2 text-2xl tracking-tight text-gray-900 dark:text-white font-medium">
        August
      </h5>
      <PieChart {data} />
      <p class="my-4 text-center font-medium text-red-500">-3201,24kr</p>
    </Card>
    <Card class="flex-1">
      <h5 class="text-center mb-2 text-2xl tracking-tight text-gray-900 dark:text-white font-medium">
        August
      </h5>
      <PieChart {data} />
      <p class="my-4 text-center font-medium text-red-500">-3201,24kr</p>
    </Card>
  </div>
</div>
