<template>
  <div id="app"class='row'>
    <div class="col s12 m10 offset-m1">
      <h2 v-if="title === ''" class="center-align grey-text">タイトル</h2>
      <h2 v-else class="center-align">{{ title }}</h2>
      <RadarChart :chart-data="chartData" :options="options"></RadarChart>
    </div>
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
    title: String,
    value: Array,
    label: Array,
    color: String
  },
  data() {
    return {
      chartData: null,
      options:null,
      bgColor:'RGBA(225,95,150, 0.3)',
      bdColor:'RGBA(225,95,150, 1)',
      pbgColor:'RGB(46,106,177)'
    };
  },
  watch: {
    value: function(){
      this.updateChartData();
    },
    label: function(){
      this.updateChartData();
    },
    color: function(){
      this.ColorSet();
      this.updateColor();
    }
  },
  mounted() {
    this.generateData();
  },
  methods: {
    generateData() {
      this.chartData = { 
        labels: this.label,
        datasets: [{
          pointHitRadius: 0.1 ,
          data: ['1','1','1','1','1'],
          backgroundColor: this.bgColor,
          borderColor: this.bdColor,
          borderWidth: 1,
          pointBackgroundColor: this.pbgColor
        }], 
      },
      this.options = {
        title: {
          display: false,
        },
        scale:{
          pointLabels: {       
            fontSize: this.SetFontSize(),    
            fontColor: ["black", "black", "black", "black", "black"]   
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
        legend: {
            display: false
         },
        tooltips:{
          enabled: false
        }
      }
    },
    updateChartData() {
      const newChartData = Object.assign({}, this.chartData);
      newChartData.datasets[0].data[0] = this.value[0];
      newChartData.datasets[0].data[1] = this.value[1];
      newChartData.datasets[0].data[2] = this.value[2];
      newChartData.datasets[0].data[3] = this.value[3];
      newChartData.datasets[0].data[4] = this.value[4];
      this.chartData = newChartData;
    },
    ColorSet(){
      if(this.color === 'red'){
        this.bgColor = 'RGBA(225,95,150, 0.3)';
        this.bdColor = 'RGBA(225,95,150, 1)';
        this.pbgColor = 'RGB(46,106,177)';
      }else if(this.color === 'blue'){
        this.bgColor = 'RGBA(74,55,250,0.3)';
        this.bdColor = 'RGBA(74,55,250,1)';
        this.pbgColor = 'RGB(30,30,30)';
      }else if(this.color === 'yellow'){
        this.bgColor = 'RGBA(255,255,0,0.5)';
        this.bdColor = 'RGBA(255,255,0,1)';
        this.pbgColor = 'RGB(46,106,177)';
      }else if(this.color === 'green'){
        this.bgColor = 'RGBA(0,255,51,0.3)';
        this.bdColor = 'RGBA(0,255,51,1)';
        this.pbgColor = 'RGB(46,106,177)';
      }
    },
    updateColor() {
      const newChartData = Object.assign({}, this.chartData);
      newChartData.datasets[0].backgroundColor = this.bgColor;
      newChartData.datasets[0].borderColor = this.bdColor;
      newChartData.datasets[0].pointBackgroundColor = this.pbgColor;
      this.chartData = newChartData;
    },
    SetFontSize(){
      if(window.innerWidth <= 600){
        return 14;
      }else{
        return 25;
    }
  },
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