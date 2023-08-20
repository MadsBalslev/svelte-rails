<script>
  import { Pie } from 'svelte-chartjs';
  import 'chart.js/auto';

  export let data;

  let options = {
    responsive: true,
    weight: 2,
    borderWidth: 0,
    plugins: {
      legend: {
        display: false,
      },
    },
  };

  // let plugins = [
  //   {
  //     id: 'text',
  //     beforeDraw: function (chart, a, b) {
  //       var width = chart.width,
  //         height = chart.height,
  //         ctx = chart.ctx;

  //       ctx.restore();
  //       var fontSize = (height / 200).toFixed(2);
  //       ctx.font = fontSize + 'em sans-serif';
  //       ctx.textBaseline = 'middle';

  //       var text = '3212,23kr',
  //         textX = Math.round((width - ctx.measureText(text).width) / 2),
  //         textY = height / 2;

  //       ctx.fillText(text, textX, textY);
  //       ctx.save();
  //     },
  //   },
  // ];
</script>

<Pie {data} {options} />
