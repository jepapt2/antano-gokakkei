<template>
  <div id="app"class='row'>
    <div class="col s12 m10 offset-m1">
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
  props:['title','label','value','color'],
  data() {
    return {
      chartData: null,
      options:null,
      bgColor:'RGBA(225,95,150, 0.3)',
      bdColor:'RGBA(225,95,150, 1)',
      pbgColor:'RGB(46,106,177)'
    };
  },
  mounted() {
    this.ColorSet();
    this.generateData();
  },
  methods: {
    generateData() {
      this.chartData = { 
        labels: this.SetLabel(),
        datasets: [{
          pointHitRadius: 0.1 ,
          data: this.SetValue(),
          backgroundColor: this.bgColor,
          borderColor: this.bdColor,
          borderWidth: 1,
          pointBackgroundColor: this.pbgColor
        }], 
      },
      this.options = {
        title: {
          display: true,
          text: this.title,
          fontSize: 50
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
      };
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
    SetFontSize(){
      if(window.innerWidth <= 600){
        return 14;
      }else{
        return 20;
      }
    },
    SetLabel(){
      return this.label.split(',');
    },
    SetValue(){
      return this.value.split(',');
    }
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