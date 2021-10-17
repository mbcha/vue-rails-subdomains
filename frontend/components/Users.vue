<template>
  <div>
    <h1>These are our family websites:</h1>
    <div
      v-for="(user, index) in users"
      :key="index"
      class="user"
    >
      <a :href=user.microSite.url>{{user.name}}</a>
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
