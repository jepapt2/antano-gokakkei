import Vue from 'vue';
import Index from './components/index.vue';
import { Radar } from 'vue-chartjs';


console.log('aaav');

Vue.component('chart', {
   extends: Radar,
   data() {
    return {
      datas: { 
            labels: ["英語", "数学", "国語", "理科", "社会"],
            datasets: [{
                label: 'Aさん',
                pointHitRadius: 0.1 ,
                data: [1, 10, 1, 1, 1],
                backgroundColor: 'RGBA(225,95,150, 0.3)',
                borderColor: 'RGBA(225,95,150, 1)',
                borderWidth: 1,
                pointBackgroundColor: 'RGB(46,106,177)'
            }, ]
        },
        options: {
            title: {
                display: true,
                text: '試験成績'
            },
            scale:{
                pointLabels: {       
                    fontSize: 30,         // 文字の大きさ
                    fontColor: ["black", "black", "black", "black", "red"]   // 文字の色
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
                }
            },
            tooltips:{
                enabled: false
            }
        }
    };
  },
  mounted () {
    this.renderChart(this.datas, this.options);
  }
});

// root インスタンスを作成する
new Vue({
  el: '#example'
})

