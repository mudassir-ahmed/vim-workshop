<template>
  <div>
    <label class="dayNight">
      <input type="checkbox" @click="toggleDarkMode" />
      <div></div>
    </label>
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
// This button CSS was forked from https://codepen.io/aaroniker/pen/KGpXZo
// and adpated into this project.

$night: #171c28;
$day: #fff;
$nightBtn: #fff;
$dayBtn: #5628ee;

.dayNight {
  cursor: pointer;
  input {
    display: none;
    & + div {
      border-radius: 50%;
      width: 36px;
      height: 36px;
      position: relative;
      box-shadow: inset 16px -16px 0 0 $nightBtn;
      transform: scale(1) rotate(-2deg);
      transition: box-shadow 0.5s ease 0s, transform 0.4s ease 0.1s;
      &:before {
        content: '';
        width: inherit;
        height: inherit;
        border-radius: inherit;
        position: absolute;
        left: 0;
        top: 0;
        transition: background 0.3s ease;
      }
      &:after {
        content: '';
        width: 8px;
        height: 8px;
        border-radius: 50%;
        margin: -4px 0 0 -4px;
        position: absolute;
        top: 50%;
        left: 50%;
        box-shadow: 0 -23px 0 $dayBtn, 0 23px 0 $dayBtn, 23px 0 0 $dayBtn,
          -23px 0 0 $dayBtn, 15px 15px 0 $dayBtn, -15px 15px 0 $dayBtn,
          15px -15px 0 $dayBtn, -15px -15px 0 $dayBtn;
        transform: scale(0);
        transition: all 0.3s ease;
      }
    }
    &:checked + div {
      box-shadow: inset 32px -32px 0 0 $nightBtn;
      transform: scale(0.5) rotate(0deg);
      transition: transform 0.3s ease 0.1s, box-shadow 0.2s ease 0s;
      &:before {
        background: $dayBtn;
        transition: background 0.3s ease 0.1s;
      }
      &:after {
        transform: scale(1.5);
        transition: transform 0.5s ease 0.15s;
      }
    }
  }
}
</style>
