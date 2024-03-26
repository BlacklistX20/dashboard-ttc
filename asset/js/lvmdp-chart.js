var lvmdp = document.getElementById("lvmdpChart");
var myBarChart = new Chart(lvmdp, {
  type: 'bar',
  data: {
  labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
    datasets: [{
      label: 'LVMDP',
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