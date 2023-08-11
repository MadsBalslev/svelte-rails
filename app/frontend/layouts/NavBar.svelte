<script>
  import { Navbar, NavBrand, NavLi, NavUl, NavHamburger, Button } from 'flowbite-svelte';
  import { router, Link, page } from '@inertiajs/svelte';
  import AvatarDropdown from './AvatarDropdown.svelte';

  $: current = $page.url;
  $: user = $page.props.user;

  function login() {
    router.get('/login');
  }
</script>

<Navbar let:hidden let:toggle>
  <NavBrand href="/">
    <span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white">Svelte-Rails</span>
  </NavBrand>
  <NavHamburger on:click={toggle} />
  <NavUl {hidden}>
    <Link class="flex items-center" href="/">
      <NavLi active={current == '/'}>Home</NavLi>
    </Link>
    {#if user}
      <AvatarDropdown {user} />
    {:else}
      <Button on:click={login} size="sm">Sign in</Button>
    {/if}
  </NavUl>
</Navbar>
