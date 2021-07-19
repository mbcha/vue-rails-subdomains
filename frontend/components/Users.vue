<template>
  <div>{{ users }}</div>
</template>

<script>
import gql from 'graphql-tag'

export default {
  apollo: {
    users: gql`query getUsers{
      users {
        id
        name
      }
    }`,
  },
}
</script>