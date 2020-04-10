import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    darkMode: true,
  },
  mutations: {
    // Why repeat?
    // mutations have to be synchronous
    toggleDarkMode(state) {
      this.state.darkMode = !state.darkMode;
    },
  },
  actions: {
    // We can perform asynchronous operations inside an action
    toggleDarkMode({ commit }) {
      commit('toggleDarkMode');
    },
  },
  getters: {
    darkMode(state) {
      return state.darkMode;
    },
  },
  modules: {},
});
