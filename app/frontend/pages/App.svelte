<svelte:head>
  <title>Home</title>
</svelte:head>

<script>
  import {page} from '@inertiajs/svelte'

  $: user = $page.props.user
</script>

<pre>{JSON.stringify(user, null, 2)}</pre>

