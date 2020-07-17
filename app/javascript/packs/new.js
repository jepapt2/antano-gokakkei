import Vue from 'vue';
import App from "./components/new.vue";
import M from 'materialize-css';
import VueDataScooper from "vue-data-scooper";
Vue.use(VueDataScooper);

Vue.config.productionTip = false;

document.addEventListener("DOMContentLoaded", () => {
var vm = new Vue({
  el: "#form",
  data:{
    value:['1','1','1','1','1'],
    label:['','','','','']
  },
  mounted(){
    var elems  = document.querySelectorAll("input[type=range]");
    M.Range.init(elems);
    var textNeedCount = document.querySelectorAll("input[type=text]");
    M.CharacterCounter.init(textNeedCount);
    var textareaNeedCount = document.querySelectorAll("textarea");
    M.CharacterCounter.init(textareaNeedCount);
    M.AutoInit();
  }
});



var vm1 = new Vue({
  el: "#hoge",
  data:vm,
});



new Vue({
  el: "#app",
  data:vm,
  components: { App },
  template: '<App :title="title" :value="value" :label="label" :color="color"></App>'
});

});








// var form = new Vue({
//   el: '#form',
//   data(){
//       return{
//           value1: 1
//       };
//   }
// });





// Vue.component('radar-chart', {
//   extends: Radar,
//   mixins: [reactiveProp],
//   props: ['value','label'],
//   data() {
//   return{
//     chartData: null
//   };
//   },
  // methods:{
  //   updateChartData() {
  //       const newChartData = Object.assign({}, this.chartData);
  //       newChartData.datasets[0].data[0] = [this.value[0]];
  //       newChartData.labels[0] = [this.label[0]];
  //       this.chartData = newChartData;
  //     },
  // },
  // watch: {
  // value: function(){
  //   this.updateChartData();
  // },
  // label: function(){
  //   this.updateChartData();
  // }
  // },
//   mounted () {
  //     this.chartData = { 
  //           labels: [this.label[0], "数学", "国語", "理科", "社会"],
  //           datasets: [{
  //               pointHitRadius: 0.1 ,
  //               data: [1,1,10,1,5],
  //               backgroundColor: 'RGBA(225,95,150, 0.3)',
  //               borderColor: 'RGBA(225,95,150, 1)',
  //               borderWidth: 1,
  //               pointBackgroundColor: 'RGB(46,106,177)'
  //           }], 
  // //       },
        // options: {
        //     title: {
        //         display: true,
        //         fontSize: 30, 
        //         text: 'うんこの三角形'
        //     },
        //     scale:{
        //         pointLabels: {       
        //             fontSize: 30,    
        //             fontColor: ["black", "black", "black", "black", "red"]   
        //         },
        //         ticks:{
        //             suggestedMin: 0,
        //             suggestedMax: 5,
        //             min: 0,
        //             max:5,
        //             stepSize: 1,
        //             callback: function(value, index, values){
        //                 return  value;
        //             }
        //         },
        //     },
        //     tooltips:{
        //         enabled: false
        //     }
        // },
//   //       RadarChartData:this.chartData
//   //     };
//   //   // this.renderChart(this.chartData, this.options);
//   };
//   }
// });


// // root インスタンスを作成する
// var vm = new Vue({
//   el: '#chart',
//   data:{
//         value:['','','','',''],
//         label:['','','','',''],
      
//   }
// });