<template>
  <div class="home">
    <ToggleDarkModeButton />
    <h1>Sounds for creatives</h1>
    <p class="lead">
      The most popular sounds on the internet. Click to toggle play state.
      Double click to reset the player.
    </p>
    <div class="sounds">
      <!-- TODO: data should be moved to JSON -->
      <SoundButton
        v-for="(item, index) in buttons"
        :key="index"
        :name="item.name"
        :emoji="item.emoji"
        :downloads="item.downloads"
      />
    </div>
  </div>
</template>

<script>
import SoundButton from '../components/SoundButton';
import ToggleDarkModeButton from '../components/ToggleDarkModeButton';
import data from '../data.json';

export default {
  components: {
    SoundButton,
    ToggleDarkModeButton,
  },
  data() {
    return {
      buttons: data['buttons'],
    };
  },
};
</script>

<style lang="scss" scoped>
.home {
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;

  .sounds {
    margin-top: 30px;
    max-width: 1024px;
  }

  .lead {
    color: grey;
    max-width: 450px;
  }
}
</style>
