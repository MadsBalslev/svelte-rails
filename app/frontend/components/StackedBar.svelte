<script>
  import { Chart, ChartWrapper, A, Button, Dropdown, DropdownItem } from 'flowbite-svelte';
  import { Icon } from 'flowbite-svelte-icons';

  const options = {
    series: [
      {
        name: 'Income',
        data: ['1420', '1620', '1820', '1420', '1650', '2120', '788', '810', '866', '788', '1100', '1200'],
      },
      {
        name: 'Food',
        data: ['788', '810', '866', '788', '1100', '1200', '1420', '1620', '1820', '1420', '1650', '2120'],
      },
      {
        name: 'Housing',
        data: ['788', '810', '866', '788', '1100', '1200', '1420', '1620', '1820', '1420', '1650', '2120'],
      },
    ],
    chart: {
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
      labels: {
        show: true,
        style: {
          fontFamily: 'Inter, sans-serif',
          cssClass: 'text-xs font-normal fill-gray-500 dark:fill-gray-400',
        },
      },
      categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
      axisTicks: {
        show: false,
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
