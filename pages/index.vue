<template>
  <div>
    index.vue
  </div>
</template>

<script>
export default {
  layout({store}) {
    return !store.state.user ? 'welcome' : 'default';
  }
}
</script>