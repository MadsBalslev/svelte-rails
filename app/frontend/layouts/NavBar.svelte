<script>
  import { Navbar, NavBrand, NavLi, NavUl, NavHamburger, DarkMode } from 'flowbite-svelte';
  import { router, Link, page } from '@inertiajs/svelte';
  import AvatarDropdown from './AvatarDropdown.svelte';

  $: current = $page.url;
  $: user = $page.props.user;
</script>

<Navbar let:hidden let:toggle>
  <NavBrand href="/">
    <img src="/assets/logo.svg" alt="logo" class="w-8 h-8 mr-2" />
    <span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white">Svelte-Rails</span>
  </NavBrand>
  <NavHamburger on:click={toggle} />
  <NavUl {hidden}>
    {#if user}
      <Link class="flex items-center" href="/">
        <NavLi active={current == '/'}>Home</NavLi>
      </Link>
      <Link class="flex items-center" href="/dashboard">
        <NavLi active={current == '/dashboard'}>Dashboard</NavLi>
      </Link>
      <AvatarDropdown {user} />
    {/if}
    <DarkMode />
  </NavUl>
</Navbar>
