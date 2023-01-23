<template>
  <v-app dark>
    <v-navigation-drawer
      v-model="drawer"
      :clipped="clipped"
      fixed
      app
      class="navi-backgroud-gradient"
    >
      <v-list>
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.to"
          router
          exact
        >
          <v-list-item-action>
            <v-icon class="white--text">{{ item.icon }}</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title class="navi-item-title">{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
    <v-app-bar :clipped-left="clipped" fixed app dark src="https://picsum.photos/1920/1080?random">
      <template v-slot:img="{ props }">
        <v-img
          v-bind="props"
          gradient="to top right, rgba(19,84,122,.5), rgba(128,208,199,.8)"
        ></v-img>
      </template>
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
      <v-btn icon @click.stop="clipped = !clipped">
        <v-icon>mdi-application</v-icon>
      </v-btn>
      <v-toolbar-title class="font-weight-bold" style="letter-spacing: 1.15px;">{{ title }}</v-toolbar-title>
      <v-spacer />
      <label class="pr-3 font-weight-bold">{{ currentUser.displayName }}</label>
      <v-btn color="white" dark outlined @click.stop="logout">
        <v-icon>mdi-logout</v-icon>
        ログアウト
      </v-btn>
    </v-app-bar>
    <v-main class="back">
      <v-container>
        <!-- <background /> -->
        <Nuxt />
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
import Background from '~/components/background/Background.vue';
export default {
  components: { Background },
  name: 'DefaultLayout',
  data() {
    return {
      clipped: true,
      drawer: true,
      items: [
        {
          icon: 'mdi-apps',
          title: 'Dashboard',
          to: '/dashboard',
        },
        {
          icon: 'mdi-chart-bubble',
          title: 'Cloud Worker',
          to: '/cloundworkers',
        },
        {
          icon: 'mdi-chart-bubble',
          title: 'New Worker',
          to: '/newworkers',
        },
      ],
      right: true,
      title: 'Cloud Sourcing Management Tool',
    }
  },

  computed: {
    currentUser() {
      return this.$store.state.user;
    }
  },

  methods: {
    logout() {
      this.$fire.auth.signOut();
      window.location = "/";
    },
  }
}
</script>
<style>
.navi-backgroud-gradient {
  background-image: linear-gradient(0deg, rgba(105, 156, 153, 1) 2%, rgba(55, 159, 87, 1) 86%);
}
.navi-item-title {
  letter-spacing: 1.15px;
  color: white;
}
.v-application {
 font-family: 'Noto Sans JP', sans-serif !important;
}
</style>