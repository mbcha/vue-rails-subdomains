<template>
  <div>
    This is the micro site of {{subdomain}}
  </div>
</template>

<script>
export default {
  computed: {
    subdomain() {
      const url = new URL(window.location.href);
      return url.hostname.split('.')[0]
    }
  }
}
</script>
