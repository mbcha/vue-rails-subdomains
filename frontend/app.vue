<template>
  <div id="app">
    <p>{{ message }}</p>
    <Users />
  </div>
</template>

<script>
import Users from './components/Users.vue'

export default {
  components: {
    Users
  },
  data: function () {
    return {
      message: "Hello Vue Testing bitches yeah wohoooo yess!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
