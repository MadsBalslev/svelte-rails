<script>
  import { router } from '@inertiajs/svelte';
  import { Avatar, Dropdown, DropdownHeader, DropdownItem, DropdownDivider } from 'flowbite-svelte';

  export let user;

  function logout() {
    console.log('logout')
    router.delete('/logout');
  }
</script>

<Avatar id="user-drop" class="cursor-pointer" />
<Dropdown triggeredBy="#user-drop" class="w-44 p-3">
  <DropdownHeader>
    <span class="block text-sm">{user.first_name} {user.last_name}</span>
    <span class="block truncate text-sm font-medium">{user.email}</span>
  </DropdownHeader>
  <DropdownItem>Dashboard</DropdownItem>
  <DropdownItem>Settings</DropdownItem>
  <DropdownItem>Earnings</DropdownItem>
  <DropdownDivider />
  <DropdownItem on:click={logout}>Sign out</DropdownItem>
</Dropdown>
