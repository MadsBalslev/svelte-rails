<script>
  import { page } from '@inertiajs/svelte';
  import { Toast } from 'flowbite-svelte';
  import { Icon } from 'svelte-awesome-icons';
  import { fly } from 'svelte/transition';

  $: flash = $page.props.flash;
  $: show = $page.props.has_flash;

  let color = 'primary'
  let msg = ''
  let icon = 'circle-info-solid'

  $: if (show) {
    if (flash.warning) {
      color = 'orange'
      msg = flash.warning
      icon = 'circle-exclamation-solid'
    }

    if (flash.error || flash.alert) {
      color = 'red'
      msg = flash.error || flash.alert
      icon = 'circle-xmark-solid '
    }

    if (flash.notice) {
      color = 'blue'
      msg = flash.notice
    }

    if (flash.success) {
      color = 'green'
      msg = flash.success
      icon = 'circle-check-solid'
    }
  }
</script>

{#if show}
<div class="my-2 w-6/12 container mx-auto">
  <Toast {color} transition={fly} params={{ x: 200 }} position="bottom-right">
    <svelte:fragment slot="icon">
      <Icon name={icon} />
    </svelte:fragment>
    {msg}
  </Toast>
</div>
{/if}
