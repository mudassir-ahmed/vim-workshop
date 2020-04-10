<template>
  <div class="app" :class="darkMode && 'app--dark'">
    <!-- <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link>
    </div>-->
    <router-view />
  </div>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
  computed: {
    ...mapGetters(['darkMode']),
  },
};
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Muli:wght@300;400;500;600;700;800;900&display=swap');

* {
  box-sizing: border-box;
  font-family: inherit;

  // Default transition for everything - looks cool when switching dark mode
  transition: 0.02s, background 0.4s ease;
}

html,
body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}

body {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  font-family: 'Muli', sans-serif;
}

.app {
  text-align: center;
  width: 100%;
  height: 100%;
  padding: 30px; // safe zone padding

  &--dark {
    background-color: #101010;
    color: white;
  }
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
