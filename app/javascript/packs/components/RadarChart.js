import { Radar, mixins } from "vue-chartjs";
const { reactiveProp } = mixins;
export default {
  extends: Radar,
  mixins: [reactiveProp],
  props: ["options","chartData"],
  mounted() {
    this.renderChart(this.chartData, this.options);
  }
};
