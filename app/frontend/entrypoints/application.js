import { createInertiaApp } from '@inertiajs/svelte'

const pages = import.meta.glob('../pages/**/*.svelte', { eager: true })

createInertiaApp({
  resolve: name => pages[`../pages/${name}.svelte`],
  setup({ el, App, props }) {
    new App({ target: el, props })
  },
})
