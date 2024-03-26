async function getDailyPue() {
  var respondPue = await $.getJSON("config/getDataSuhu.php");
}

Chart.defaults.font.size = 20;

var pagi = document.getElementById("puePagi");
var myBarChart = new Chart(pagi, {
  type: "bar",
  data: {
    labels: ["14/3", "15/3", "15/3", "16/3", "17/3", "18/3", "19/3", "20/3"],
    datasets: [
      {
        label: "Waktu 6 Pagi",
        backgroundColor: "rgba(245, 37, 37, 0.5)",
        borderColor: "rgba(245, 37, 37, 1)",
        data: [1.86, 1.96, 1.88, 1.89, 1.96, 1.68, 1.89, 1.77],
        fill: "start",
      },
    ],
  },
  options: {
    maintainAspectRatio: false,
    scales: {
      y: {
        Min: 0,
        Max: 2,
      },
    },
  },
});

var siang = document.getElementById("pueSiang");
var myBarChart = new Chart(siang, {
  type: "bar",
  data: {
    labels: ["14/3", "15/3", "15/3", "16/3", "17/3", "18/3", "19/3", "20/3"],
    datasets: [
      {
        label: "Waktu 2 Siang",
        backgroundColor: "rgba(245, 37, 37, 0.5)",
        borderColor: "rgba(245, 37, 37, 1)",
        data: [1.86, 1.96, 1.88, 1.89, 1.96, 1.68, 1.89, 1.77],
        fill: "start",
      },
    ],
  },
  options: {
    maintainAspectRatio: false,
    scales: {
      y: {
        Min: 0,
        Max: 2,
      },
    },
  },
});

var malam = document.getElementById("pueMalam");
var myBarChart = new Chart(malam, {
  type: "bar",
  data: {
    labels: ["14/3", "15/3", "15/3", "16/3", "17/3", "18/3", "19/3", "20/3"],
    datasets: [
      {
        label: "Waktu 8 Malam",
        backgroundColor: "rgba(245, 37, 37, 0.5)",
        borderColor: "rgba(245, 37, 37, 1)",
        data: [1.86, 1.96, 1.88, 1.89, 1.96, 1.68, 1.89, 1.77],
        fill: "start",
      },
    ],
  },
  options: {
    maintainAspectRatio: false,
    scales: {
      y: {
        Min: 0,
        Max: 2,
      },
    },
  },
});
