<script>
  import { router, Link } from '@inertiajs/svelte';
  import { Avatar, Dropdown, DropdownHeader, DropdownItem, DropdownDivider, Li } from 'flowbite-svelte';
  import { Icon } from 'svelte-awesome-icons';

  export let user;

  let src = user.avatar_url || null;

  function initials() {
    return user.first_name[0] + user.last_name[0];
  }

  function logout() {
    console.log('logout');
    router.delete('/logout');
  }
</script>

<Avatar src={src ? src : null} id="user-drop" class="cursor-pointer">{src ? null : initials()}</Avatar>
<Dropdown triggeredBy="#user-drop" class="w-44 p-3">
  <DropdownHeader>
    <span class="block text-sm">{user.first_name} {user.last_name}</span>
    <span class="block truncate text-sm font-medium">{user.email}</span>
  </DropdownHeader>
  <DropdownItem>
    <Link href="/user">
      <Li icon>
        <Icon name="user-gear-solid" class="w-3.5 h-3.5 mr-2" />
        Profile
      </Li>
    </Link>
  </DropdownItem>
  <DropdownDivider />
  <DropdownItem on:click={logout}>
    <Li icon>
      <Icon name="arrow-right-from-bracket-solid" class="w-3.5 h-3.5 mr-2" />
      Sign out
    </Li>
  </DropdownItem>
</Dropdown>
