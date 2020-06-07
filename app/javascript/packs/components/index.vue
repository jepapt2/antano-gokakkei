<template>
  <div class=container>
    <h3>散布図を描画する</h3>
    <ScatterChart/>
  </div>
</template>

<script>
// インポート
import { Scatter } from 'vue-chartjs';

var ScatterChart = {
  extends: Scatter,
  mounted () {
    this.renderChart({
      datasets: [{
      //ラベル
      label:'重要度',
      fill: false,
      borderColor: '#f87979',
      backgroundColor: '#f87979',
      //データ詳細
      data: [{
        x: 10,
        y: 20
      },{
        x:5,
        y:6
      },{
        x:4,
        y:6
      }]
    },
    {
    label: '緊急度',
    fil: false,
    borderColor: '#7acbf9',
    backgroundColor: '#7acbf9',
    data: [{
        x: 6,
        y: 7
      },{
        x:-4,
        y:3
      },{
        x:1,
        y:-2
      }]
    }]
  },{responsive: true,maintainAspectRatio: false});
}
}        


export default {
  name: 'Test',
  components: {
    ScatterChart
  }
} ;

</script>

<style scoped>
/*//画面に表示されるサイズを適当に整える*/
.container{
  width:40%;
  height:40%;

}
</style>
