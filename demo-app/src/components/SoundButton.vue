<template>
  <div :class="playing ? 'sound sound--playing' : 'sound'">
    <a
      href="#"
      @click.prevent="toggle()"
      @dblclick.prevent="resetPlayer()"
      class="sound__btn"
    >
      <div
        href="#"
        class="sound__btn-progress"
        :style="`transform: translateX(${progress - 100}%);`"
      ></div>
      <div class="sound__btn-emoji">{{ emoji }}</div>
    </a>
    <span class="sound__name">{{ name }}</span>
    <!-- <span class="sound__downloads">{{ downloads }}</span> -->
    <!-- <span class="sound__author">Author/Credits</span> -->
    <audio
      ref="audioPlayer"
      class="sound__audio"
      :src="audioFilePath"
      v-on:pause="audioPausedHandler()"
      v-on:play="audioPlayHandler()"
      v-on:timeupdate="audioTimeUpdateHandler()"
      preload
    >
      > You're browser does not support the audio element - please update you're
      browser.
    </audio>
  </div>
</template>

<script>
/**
 * @docs https://developer.mozilla.org/en-US/docs/Web/Guide/Events/Media_events
 */

export default {
  data() {
    return {
      playing: false,
      progress: 0,
    };
  },
  computed: {
    audioFilePath() {
      try {
        return require(`@/assets/sounds/${this.soundFile}`);
      } catch {
        // can't find audio
        // Todo: maybe add a style state to show user audio wasn't found
        return '';
      }
    },
  },
  props: {
    emoji: {
      type: String,
      default: '🚀',
    },
    name: {
      type: String,
      default: 'No name',
    },
    downloads: {
      type: Number,
      default: 0,
    },
    soundFile: {
      type: String,
      default: 'no_sound.mp3',
    },
  },
  methods: {
    toggle() {
      const el = this.$refs.audioPlayer;

      if (el.paused) {
        el.play();
      } else {
        el.pause();
      }

      // Note:
      // component play state gets updated by event listeners on audio element
    },
    resetPlayer() {
      const el = this.$refs.audioPlayer;

      el.pause();
      el.currentTime = 0;
    },
    audioPausedHandler() {
      this.playing = false;
    },
    audioPlayHandler() {
      this.playing = true;
    },
    audioTimeUpdateHandler() {
      const el = this.$refs.audioPlayer;

      this.progress = (el.currentTime / el.duration) * 100;
    },
  },
};
</script>

<style lang="scss" scoped>
.sound {
  text-align: center;
  display: inline-block;
  vertical-align: top;
  margin: 20px;

  &--playing {
    .sound__btn {
      &,
      &:visited,
      &:link {
        background-color: rgba(255, 152, 0, 0.3);
      }
    }
  }

  &__btn {
    &,
    &:visited,
    &:link {
      // Remove default styles
      border: none;
      outline: none;
      text-decoration: none;

      // Make it fancy
      border-radius: 40%;
      display: block;
      font-size: 30px;
      width: 128px;
      height: 128px;
      margin: auto;
      background-color: rgba(192, 214, 255, 0.5);
      // Todo: make it a better bounce animation
      transition: transform 0.1s cubic-bezier(0.215, 0.61, 0.355, 1),
        background-color 0.2s ease-out;

      // Optimise the scale animation
      will-change: transform;

      // Allows us to make the progress bar
      position: relative;
      overflow: hidden;

      // Align emoji center
      display: flex;
      align-content: center;
      justify-content: center;
      flex-direction: column;
    }

    &:active {
      transform: scale(0.9);
    }

    &-emoji {
      display: block;
      font-size: 30px;
    }

    &-progress {
      position: absolute;
      top: 0;
      left: 0;
      height: 100%;
      width: 100%;
      background-color: #000000;
      opacity: 0.05;

      // Getting progress bar animation to appear smooth
      will-change: transform;
      transform: translateX(0%);
      transform-origin: left;
      transition: 0.3s ease-out;
    }
  }

  &__name {
    // font-weight: bold;
    margin: 15px 0 5px 0;
    display: block;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    width: 160px;
  }

  &__downloads {
    font-weight: bold;
    color: #e8b112;
  }

  &__author {
    font-weight: normal;
    display: block;
  }
}
</style>
