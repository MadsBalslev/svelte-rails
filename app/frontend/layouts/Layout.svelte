<script>
  import { page } from '@inertiajs/svelte'
  import NavBar from './NavBar.svelte';
  import FlashMessages from './FlashMessages.svelte';

</script>
<NavBar />
<div class="px-4 mx-auto mt-8 sm:w-full md:w-10/12">
  <FlashMessages />
	<main class="w-full mx-auto">
		<slot />
	</main>
</div>
