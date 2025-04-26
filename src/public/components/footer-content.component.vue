<script>
export default {
  name: "footer-content"
}
</script>

<template>
  <div class="grid bg-primary mt-4 p-4 align-content-start">
    <div class="col-12 ml-3 align-items-center justify-content-center">
      <p>Copyright &copy; 2025. ACME Studio</p>
    </div>
    <div class="col-12 ml-3 mt-3 align-items-center justify-content-center">
      <p>
        {{ $t('authoring-phrase.intro')}} <i class="pi pi-heart"/>
        {{ $t('authoring-phrase.use')}} <a href="https://primevue.org/" target="_blank">PrimeVue</a>
        {{ $t('authoring-phrase.author', { brand: 'ACME Studio' }) }}
      </p>
      <p>{{ $t('footer.powered-by')}} <a href="https://www.newsapi.org">NewsAPI.org</a> {{ $t('footer.and')}} <a href="https://www.clearbit.com" target="_blank">Clearbit Logo API</a> </p>
    </div>
  </div>
</template>

<style scoped>

</style>