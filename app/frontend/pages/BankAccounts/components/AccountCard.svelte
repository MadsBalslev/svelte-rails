<script>
  import {Link} from '@inertiajs/svelte'
  import { Card } from 'flowbite-svelte';
  import { Icon } from 'svelte-awesome-icons';

  export let account;

  let DKK = new Intl.NumberFormat('da-DK', {
    style: 'currency',
    currency: 'DKK',
  });

  let balanceColor = '';
  if (account.balance > 0) {
    balanceColor = 'text-green-500';
  } else if (account.balance < 0) {
    balanceColor = 'text-red-500';
  }
</script>

<Link href="/accounts/{account.id}">
  <Card class="min-w-full" href="/accounts/{account.id}">
    <div class="flex justify-between items-top">
      <Icon name="credit-card-regular" class="h-5 w-5" />
      <div class="flex items-center gap-1">
        <p class="text-xl">{account.name}</p>
      </div>
    </div>
    <div class="flex justify-between items-start mt-8">
      <div class="flex flex-col justify-between h-full">
        <p class="text-sm">Account number</p>
        <p class="text-xs">1234 5678 9012 3456</p>
      </div>
      <div class="flex-col justify-between">
        <p class="text-sm">Balance</p>
        <p class="text-xl font-bold {balanceColor}">{DKK.format(account.balance)}</p>
      </div>
    </div>
  </Card>
</Link>
