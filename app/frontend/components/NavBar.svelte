<script>
  import { Navbar, NavBrand, NavLi, NavUl, NavHamburger, Button, Input } from 'flowbite-svelte';
  import { router, Link, page } from '@inertiajs/svelte'

  $: current = $page.url
  $: user = $page.props.user

  function login() {
    router.get('/login')
  }

  function logout() {
    router.delete('/logout')
  }
</script>

<Navbar let:hidden let:toggle>
  <NavBrand href="/">
    <span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white">Svelte-Rails</span>
  </NavBrand>
  <div class="flex md:order-2">
    {#if user}
       <Button on:click={logout} size="sm">Sign out</Button>
    {:else}
       <Button on:click={login} size="sm">Sign up!</Button>
    {/if}
    <NavHamburger on:click={toggle} />
  </div>
  <NavUl {hidden} class="order-1">
    <Link href="/">
      <NavLi active={current == "/"}>Home</NavLi>
    </Link>
  </NavUl>
</Navbar>
