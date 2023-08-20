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
  <div class="flex items-center md:order-2">
    {#if user}
       <AvatarDropdown {user} />
    {/if}
    <NavHamburger on:click={toggle} class1="w-full md:flex md:w-auto md:order-1" />
  </div>
  <NavUl {hidden}>
    {#if user}
      <Link href="/">
        <NavLi active={current == '/'}>Home</NavLi>
      </Link>
      <Link href="/dashboard">
        <NavLi active={current == '/dashboard'}>Dashboard</NavLi>
      </Link>
      <Link href="/accounts">
        <NavLi active={current == '/accounts'}>Accounts</NavLi>
      </Link>
    {/if}
  </NavUl>
</Navbar>
