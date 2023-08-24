<script>
  import { Chart, ChartWrapper, A, Button, Dropdown, DropdownItem } from 'flowbite-svelte';
  import da from 'apexcharts/dist/locales/da.json';

  export let data = [];

  const options = {
    series: [
      {
        name: 'Expenses',
        data: data,
      },
    ],
    chart: {
      locales: [da],
      defaultLocale: 'da',
      sparkline: {
        enabled: false,
      },
      type: 'bar',
      width: '100%',
      height: 400,
      stacked: true,
      toolbar: {
        show: false,
      },
      zoom: {
        enabled: false,
      },
    },
    fill: {
      opacity: 1,
    },
    stroke: {
      width: 2,
      colors: ['#fff'],
    },
    plotOptions: {
      bar: {
        horizontal: false,
        columnWidth: '50%',
        borderRadiusApplication: 'end',
        borderRadius: 6,
        dataLabels: {
          position: 'top',
        },
      },
    },
    legend: {
      show: true,
      position: 'bottom',
    },
    responsive: [
      {
        breakpoint: 768,
        options: {
          plotOptions: {
            bar: {
              horizontal: true,
            },
          },
          legend: {
            position: 'bottom',
          },
          grid: {
            xaxis: {
              lines: {
                show: true,
              },
            },
            yaxis: {
              lines: {
                show: false,
              },
            },
          },
          yaxis: {
            labels: {
              formatter: function (value) {
                return value;
              },
            },
          },
          xaxis: {
            labels: {
              formatter: function (value) {
                return 'kr. ' + value;
              },
            },
          },
        },
      },
    ],
    dataLabels: {
      enabled: false,
    },
    tooltip: {
      shared: true,
      intersect: false,
      formatter: function (value) {
        return 'kr. ' + value;
      },
    },
    xaxis: {
      type: 'datetime',
      labels: {
        show: true,
        style: {
          fontFamily: 'Inter, sans-serif',
          cssClass: 'text-xs font-normal fill-gray-500 dark:fill-gray-400',
        },
      },
      axisTicks: {
        show: true,
      },
      axisBorder: {
        show: false,
      },
    },
    yaxis: {
      labels: {
        show: true,
        style: {
          fontFamily: 'Inter, sans-serif',
          cssClass: 'text-xs font-normal fill-gray-500 dark:fill-gray-400',
        },
        formatter: function (value) {
          return 'kr. ' + value;
        },
      },
    },
    grid: {
      show: true,
      strokeDashArray: 4,
      padding: {
        left: 2,
        right: 2,
        top: -20,
      },
      xaxis: {
        lines: {
          show: false,
        },
      },
      yaxis: {
        lines: {
          show: true,
        },
      },
    },
    fill: {
      opacity: 1,
    },
  };
</script>

<ChartWrapper class="min-w-full">
  <Chart {options} />
</ChartWrapper>
