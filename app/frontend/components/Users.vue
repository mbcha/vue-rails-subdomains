<template>
  <div>
    <h1>Sibling's websites:</h1>
    <div :class="'siblings'">
      <div
        v-for="(user, index) in users"
        :key="index"
        class="user"
      >
        <a :href="user.microSite.url" :class="'button'">{{user.name}}</a>
      </div>
    </div>
  </div>
</template>

<script>
import gql from 'graphql-tag'

export default {
  apollo: {
    users: gql`query getUsers{
      users {
        id
        name
        microSite {
          id
          url
        }
      }
    }`
  },
}
</script>

<style scoped>
.button {
  background-color: white;
  border: 1px solid #B7CBD2;
  font-weight: bold;
  border-radius: 5px;
  text-align: center;
  cursor: pointer;
  padding: 10px 16px;
  text-decoration: none;
  height: 15px;
  width: 50px;
}
.siblings {
  margin-top: 100px;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
}
</style>
