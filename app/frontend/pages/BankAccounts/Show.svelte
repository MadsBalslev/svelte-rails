<script>
  import {
    Table,
    TableBody,
    TableBodyCell,
    TableBodyRow,
    TableHead,
    TableHeadCell,
    TableSearch,
  } from 'flowbite-svelte';
  import dayjs from 'dayjs';

  export let account;
  export let transactions;

  const DKK = new Intl.NumberFormat('da-DK', {
    style: 'currency',
    currency: 'DKK',
  });

  const amountColor = (transaction) => {
    switch (transaction.transaction_type) {
      case 'withdrawal':
        return 'text-red-500'
      case 'deposit':
        return 'text-green-500'
      default:
        return ''
    }
  }
</script>

<svelte:head>
  <title>{account.name}</title>
</svelte:head>

<div class="container w-full flex flex-col gap-10 pb-20">
  <div id="overview">
    <h3 class="text-xl font-semibold dark:text-white">{account.name}</h3>
    <div class="container my-2 flex">
      <div>
        <p class="text-sm font-light dark:text-white">
          You've spent <span class="text-red-500 font-medium">-2.345 kr.</span> and earned
          <span class="text-green-500 font-medium">+5,432 kr.</span> this month
        </p>
      </div>
    </div>
  </div>
  <div class="table">
    <Table hoverable={true}>
      <TableHead>
        <TableHeadCell>Date</TableHeadCell>
        <TableHeadCell>Description</TableHeadCell>
        <TableHeadCell>Amount</TableHeadCell>
      </TableHead>
      <TableBody class="divide-y">
        {#each transactions as transaction}
          <TableBodyRow>
            <TableBodyCell>{transaction.date}</TableBodyCell>
            <TableBodyCell>{transaction.description}</TableBodyCell>
            <TableBodyCell class="{amountColor(transaction)}">{DKK.format(`${transaction.transaction_type == 'withdrawal' ? '-' : ''}${transaction.amount}`)}</TableBodyCell>
          </TableBodyRow>
        {/each}
      </TableBody>
    </Table>
  </div>
</div>
