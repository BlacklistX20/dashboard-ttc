Chart.defaults.font.size = 20;

var pue = document.getElementById("pueChart");
var myLineChart = new Chart(pue, {
  type: 'line',
  data: {
    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
    datasets: [{
      label: 'PUE',
      backgroundColor: "rgba(245, 37, 37, 0.5)",
      borderColor: "rgba(245, 37, 37, 1)",
      data: [1.86, 1.96, 1.88, 1.89, 1.96, 1.68, 1.89, 1.85, 1.68, 1.67, 1.85, 1.90],
      fill: 'start',
    }],
  },
  options: {
    maintainAspectRatio: false,
    legend: {
      display: false
    },
    
  }
});