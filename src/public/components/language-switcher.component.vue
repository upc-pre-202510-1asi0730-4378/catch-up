<script>
export default {
  name: "language-switcher",
  data() {
    return {
      languages: ['en', 'es'],
    }
  }
}
</script>

<template>
  <pv-select-button v-model="$i18n.locale" :options="languages" class="uppercase"/>
</template>

<style scoped>

</style>