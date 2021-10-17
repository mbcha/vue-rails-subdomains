<template>
  <div v-if="microSite" :class="'container'">
    <h1 :class="'header'">This is the website of {{microSite.user.name.toUpperCase()}}</h1>
    <div :class="'navigation'">
      <div :class="'button'" @click="changeView('home')">Home</div>
      <div :class="'button'" @click="changeView('info')">Info</div>
    </div>
    <div v-if="view === 'home'">
      <img :src="require(`../images/${microSite.headerImageUrl}.jpg`)" :class="'image'">
    </div>
    <div v-else :class="'info'">
      <h3 :class="'subHeader'">{{microSite.title}}</h3>
      <p :class="'description'">{{microSite.description}}</p>
    </div>
  </div>
</template>

<script>
import gql from 'graphql-tag'

export default {
  data() {
    return {
      view: 'home'
    }
  },
  apollo: {
    microSite: {
      query: gql`
        query getMicroSite($subdomain: String!) {
          microSite(subdomain: $subdomain) {
            id
            title
            description
            headerImageUrl
            user {
              id
              name
            }
          }
        }
      `,
      variables() {
        return {
          subdomain: this.subdomain
        }
      }
    }
  },
  computed: {
    subdomain() {
      const url = new URL(window.location.href);
      return url.hostname.split('.')[0]
    }
  },
  methods: {
    changeView(name) {
      this.view = name
    }
  }
}
</script>

<style scoped>
.navigation {
  display: flex;
  justify-content: center;
  align-items: center;
}
.button {
  font-weight: bold;
  text-align: center;
  cursor: pointer;
  padding: 10px 16px;
  text-decoration: underline;
  height: 15px;
  width: 50px;
}
.image {
  height: 80vh;
  width: 100%;
}
.info {
  margin: 100px;
}
</style>
