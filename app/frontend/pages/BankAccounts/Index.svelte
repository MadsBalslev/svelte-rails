<script>
  import { page } from '@inertiajs/svelte';

  let user = $page.props.user;
</script>

<svelte:head>
  <title>Accounts</title>
</svelte:head>

<pre>{JSON.stringify($page, null, 2)}</pre>
