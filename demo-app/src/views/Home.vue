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
        name="They ask you how you are and you just have to say that you're fine"
        :downloads="2154"
        emoji="😢"
        sound-file="not_fine.mp3"
      />
      <SoundButton
        name="It's me Mario"
        :downloads="52038"
        emoji="🍄"
        sound-file="its_mario.mp3"
      />
      <SoundButton
        name="I didn't choose the thug life, the thug life chose me"
        :downloads="52038"
        emoji="😎"
        sound-file="thug_life.mp3"
      />
      <SoundButton
        name="Sarcastic woww"
        :downloads="52038"
        emoji="😮"
        sound-file="sarcastic_woww.mp3"
      />
      <SoundButton
        name="Do it, just do it!"
        :downloads="52038"
        emoji="👏"
        sound-file="just_do_it.mp3"
      />
      <SoundButton
        name="Sketchers"
        :downloads="52038"
        emoji="👟"
        sound-file="sketchers.mp3"
      />
      <SoundButton
        name="Don't Rush by Young T & Bugsey ft. Headie One - GRM Daily"
        :downloads="52038"
        emoji="💸‍"
        sound-file="dont_rush_grm_daily.mp3"
      />
      <SoundButton
        name="Runnn"
        :downloads="52038"
        emoji="🏃"
        sound-file="run.mp3"
      />
      <SoundButton
        name="FBI open up"
        :downloads="52038"
        emoji="👮️"
        sound-file="fbi_open_up.mp3"
      />
      <SoundButton
        name="Windows XP"
        :downloads="52038"
        emoji="💻"
        sound-file="windows_xp.mp3"
      />
    </div>
  </div>
</template>

<script>
import SoundButton from '../components/SoundButton';
import ToggleDarkModeButton from '../components/ToggleDarkModeButton';

export default {
  components: {
    SoundButton,
    ToggleDarkModeButton,
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
