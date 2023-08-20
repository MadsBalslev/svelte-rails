<script>
  import { Card, Button } from 'flowbite-svelte';
  import { Icon } from 'svelte-awesome-icons';
  import StackedBar from '@/components/StackedBar.svelte';

</script>

<svelte:head>
  <title>Overview</title>
</svelte:head>

<div class="container w-full flex flex-col gap-10 pb-20">
  <div id="overview">
    <h3 class="text-lg font-semibold">Overview</h3>
    <div class="container my-2 flex">
      <div>
        <p class="text-sm font-light">
          You've spent <span class="text-red-500 font-medium">-2.345 kr.</span> and earned
          <span class="text-green-500 font-medium">+5,432 kr.</span> this month
        </p>
      </div>
    </div>
    <div class="cards mt-8 justify-items-center grid gap-2 sm:grid-cols-1 md:grid-cols-2 xl:grid-cols-4">
      <Card class="w-full">
        <div class="flex justify-between items-top">
          <Icon name="sack-dollar-solid" class="shrink-0 h-4 w-4" />
          <div class="flex items-center gap-1">
            <Icon name="arrow-trend-up-solid" class="shrink-0 h-3 w-3 text-green-500" />
            <p class="text-xs font-light">
              <span class="text-green-500 font-medium">+2.6%</span> vs last 30 days
            </p>
          </div>
        </div>
        <div class="flex flex-col justify-end items-start mt-8">
          <p class="text-2xl">+5.432 kr.</p>
          <a href="/" class="mt-2 inline-flex items-center text-sm text-primary-600 hover:underline">
            Incomes
            <Icon name="arrow-up-right-from-square-solid" class="shrink-0 h-3 w-3 ml-1" />
          </a>
        </div>
      </Card>
      <Card class="w-full">
        <div class="flex justify-between items-top">
          <Icon name="credit-card-solid" class="shrink-0 h-4 w-4" />
          <div class="flex items-center gap-1">
            <Icon name="arrow-trend-up-solid" class="shrink-0 h-3 w-3 text-red-500" />
            <p class="text-xs font-light">
              <span class="text-red-500 font-medium">+1.22%</span> vs last 30 days
            </p>
          </div>
        </div>
        <div class="flex flex-col justify-end items-start mt-8">
          <p class="text-2xl">-2.432 kr.</p>
          <a href="/" class="mt-2 inline-flex items-center text-sm text-primary-600 hover:underline">
            Expenses
            <Icon name="arrow-up-right-from-square-solid" class="shrink-0 h-3 w-3 ml-1" />
          </a>
        </div>
      </Card>
      <Card class="w-full">
        <div class="flex justify-between items-top">
          <Icon name="chart-simple-solid" class="shrink-0 h-4 w-4" />
          <div class="flex items-center gap-1">
            <Icon name="arrow-trend-up-solid" class="shrink-0 h-3 w-3 text-green-500" />
            <p class="text-xs font-light">
              <span class="text-green-500 font-medium">+2.6%</span> vs last 30 days
            </p>
          </div>
        </div>
        <div class="flex flex-col justify-end items-start mt-8">
          <p class="text-2xl">+1.232 kr.</p>
          <a href="/" class="mt-2 inline-flex items-center text-sm text-primary-600 hover:underline">
            Savings
            <Icon name="arrow-up-right-from-square-solid" class="shrink-0 h-3 w-3 ml-1" />
          </a>
        </div>
      </Card>
      <Card class="w-full">
        <div class="flex justify-between items-top">
          <Icon name="chart-pie-solid" class="shrink-0 h-4 w-4" />
          <div class="flex items-center gap-1">
            <Icon name="arrow-trend-down-solid" class="shrink-0 h-3 w-3 text-green-500" />
            <p class="text-xs font-light">
              <span class="text-green-500 font-medium">-1.26%</span> vs last 30 days
            </p>
          </div>
        </div>
        <div class="flex flex-col justify-end items-start mt-8">
          <p class="text-2xl">-5.432 kr.</p>
          <a href="/" class="mt-2 inline-flex items-center text-xs text-primary-600 hover:underline">
            Debts
            <Icon name="arrow-up-right-from-square-solid" class="shrink-0 h-3 w-3 ml-1" />
          </a>
        </div>
      </Card>
    </div>
  </div>
  <div id="breakdown">
    <div class="flex justify-between items-center mb-4">
      <h3 class="text-lg font-semibold">Breakdown</h3>
      <div id="filters" class="flex items-center gap-2">
        <Button outline pill size="xs">
          <Icon name="filter-solid" class="w-3.5 h-3.5 mr-2" />
          Filters
        </Button>
        <Button outline pill size="xs">
          Jan
          <Icon name="arrow-right-solid" class="w-3.5 h-3.5 mx-2" />
          Now
        </Button>
      </div>
    </div>
    <StackedBar />
  </div>
</div>
