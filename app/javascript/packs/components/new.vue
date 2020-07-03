<template>
  <div id="app">
   <RadarChart :chart-data="chartData" :options="options"></RadarChart>
  </div>
</template>

<script>
import RadarChart from "./RadarChart.js";
export default {
  name: "App",
  components: {
    RadarChart
  },
  props:{
    value: Array,
    label: Array
  },
  data() {
    return {
      chartData: null,
      options:null
    };
  },
  methods: {
    generateData() {
      this.chartData = { 
        labels: this.label,
        datasets: [{
          pointHitRadius: 0.1 ,
          data: ['1','1','1','1','1'],
          backgroundColor: 'RGBA(225,95,150, 0.3)',
          borderColor: 'RGBA(225,95,150, 1)',
          borderWidth: 1,
          pointBackgroundColor: 'RGB(46,106,177)'
        }], 
      },
      this.options = {
        title: {
          display: true,
          fontSize: 30, 
          text: 'うんこの三角形'
        },
        scale:{
          pointLabels: {       
            fontSize: 30,    
            fontColor: ["black", "black", "black", "black", "red"]   
          },
          ticks:{
            suggestedMin: 0,
            suggestedMax: 5,
            min: 0,
            max:5,
            stepSize: 1,
            callback: function(value, index, values){
              return  value;
            }
          },
        },
        tooltips:{
          enabled: false
        }
      }
    },
    updateChartData() {
        const newChartData = Object.assign({}, this.chartData);
        newChartData.datasets[0].data[0] = this.value[0];
        newChartData.labels[0] = this.label[0];
        this.chartData = newChartData;
    }
  },
  
  watch: {
  value: function(){
    this.updateChartData();
  },
  label: function(){
    this.updateChartData();
  }
  },
  
  mounted() {
    this.generateData();
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>


      // let newArray = [];
      // // for (let i = 0; i < 10; i++) {
      // //   let randomValue = Math.floor(Math.random() * 10);
      // //   newArray.push(randomValue);
      // // }