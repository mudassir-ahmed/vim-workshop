<template>
  <div>
    <button class="dark-mode-btn" @click="toggleDarkMode">
      Toggle Dark Mode
    </button>
  </div>
</template>

<script>
import { mapActions } from 'vuex';

export default {
  methods: {
    ...mapActions(['toggleDarkMode']),
  },
};
</script>

<style lang="scss" scoped>
.dark-mode-btn {
  background-color: red;
}
</style>
