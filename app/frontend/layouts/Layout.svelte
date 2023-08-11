<script>
  import NavBar from './NavBar.svelte';
  import FlashMessages from './FlashMessages.svelte';
</script>
<NavBar />
<FlashMessages />
<div class="max-w-7xl mx-auto px-4 sm:px-8">
  <main class="">
    <div class="max-w-7xl mx-auto px-4 sm:px-8">
      <slot/>
    </div>
  </main>
</div>
