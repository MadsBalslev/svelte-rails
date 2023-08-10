<script>
  import { Navbar, NavBrand, NavLi, NavUl, NavHamburger, Button, Input } from 'flowbite-svelte';
  import { router, Link, page } from '@inertiajs/svelte'

  $: current = $page.url

  function login() {
    router.get('/login')
  }
</script>

<Navbar let:hidden let:toggle>
  <NavBrand href="/">
    <span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white">Svelte-Rails</span>
  </NavBrand>
  <div class="flex md:order-2">
    <Button on:click={login} size="sm">Sign Up!</Button>
    <NavHamburger on:click={toggle} />
  </div>
  <NavUl {hidden} class="order-1">
    <Link href="/">
      <NavLi active={current == "/"}>Home</NavLi>
    </Link>
  </NavUl>
</Navbar>
