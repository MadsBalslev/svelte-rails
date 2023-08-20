<script>
  import { Navbar, NavBrand, NavLi, NavUl, NavHamburger, DarkMode } from 'flowbite-svelte';
  import { router, Link, page } from '@inertiajs/svelte';
  import AvatarDropdown from './AvatarDropdown.svelte';

  $: activeUrl = $page.url;
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
  <NavUl {activeUrl} {hidden}>
    {#if user}
      <Link href="/">
        <NavLi href="/">Home</NavLi>
      </Link>
      <Link href="/dashboard">
        <NavLi href="/dashboard">Dashboard</NavLi>
      </Link>
      <Link href="/accounts">
        <NavLi href="/accounts">Accounts</NavLi>
      </Link>
    {/if}
  </NavUl>
</Navbar>
