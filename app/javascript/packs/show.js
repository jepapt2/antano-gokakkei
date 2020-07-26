import Vue from 'vue';
import App from "./components/show.vue";
import M from 'materialize-css';

Vue.config.productionTip = false;




new Vue({
  el: "#App",
  props:['title','label','value','color'],
  components: { App }
});