<script>
  import { Navbar, NavBrand, NavLi, NavUl, NavHamburger, DarkMode } from 'flowbite-svelte';
  import { router, Link, page } from '@inertiajs/svelte';
  import AvatarDropdown from './AvatarDropdown.svelte';

  $: current = $page.url;
  $: user = $page.props.user;
</script>

<Navbar let:hidden let:toggle>
  <NavBrand href="/">
    <span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white">Svelte-Rails</span>
  </NavBrand>
  <NavHamburger on:click={toggle} />
  <NavUl {hidden}>
    {#if user}
      <Link class="flex items-center" href="/">
        <NavLi active={current == '/'}>Home</NavLi>
      </Link>
      <Link class="flex items-center" href="/accounts">
        <NavLi active={current == '/accounts'}>Accounts</NavLi>
      </Link>
      <AvatarDropdown {user} />
    {/if}
    <DarkMode />
  </NavUl>
</Navbar>
