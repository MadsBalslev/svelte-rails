<script>
  import { page } from '@inertiajs/svelte';

  $: user = $page.props.user;
</script>

<svelte:head>
  <title>Accounts</title>
</svelte:head>

<h3>Bank Accounts</h3>
