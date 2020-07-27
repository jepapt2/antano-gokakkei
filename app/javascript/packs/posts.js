import Vue from 'vue';
import App from "./components/posts.vue";
import M from 'materialize-css';

Vue.config.productionTip = false;

new Vue({
  el: "#App",
  props:['title','value','color'],
  components: { App }
});

