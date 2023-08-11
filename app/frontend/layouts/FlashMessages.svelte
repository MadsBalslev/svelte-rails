<script>
  import { page } from '@inertiajs/svelte';
  import { Alert } from 'flowbite-svelte';
  import { Icon } from 'flowbite-svelte-icons';
  import { fly } from 'svelte/transition';

  $: flash = $page.props.flash;
  $: show = $page.props.has_flash;

  let color = 'primary'
  let msg = ''

  $: if (show) {
    if (flash.warning) {
      color = 'yellow'
      msg = flash.alert
    }

    if (flash.error || flash.alert) {
      color = 'red'
      msg = flash.error || flash.alert
    }

    if (flash.notice) {
      color = 'blue'
      msg = flash.notice
    }

    if (flash.success) {
      color = 'green'
      msg = flash.success
    }
  }
</script>

{#if show}
<div class="my-2 w-6/12 container mx-auto">
  <Alert {color} dismissable transition={fly} params={{ x: 200 }}>
    <Icon name="info-circle-solid" slot="icon" class="w-4 h-4" />
    {msg}
  </Alert>
</div>
{/if}
