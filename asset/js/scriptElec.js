import { getDataRecti } from "./module/recti.js";
import { getDataUps } from "./module/ups.js";

$(document).ready(
	function () {
		$("a[id=electric]").addClass("active");
		$("#date").text(namaHari + ", " + tgl);
	},
	startTime()
);

const label = [
	"00:00",
	"00:00",
	"00:00",
	"00:00",
	"00:00",
	"00:00",
	"00:00",
	"00:00",
	"00:00",
	"00:00",
	"00:00",
	"00:00",
];
const data = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
const startingData = {
	labels: label,
	datasets: [
		{
			label: "load",
			backgroundColor: "rgba(245, 37, 37, 0.5)",
			borderColor: "rgba(245, 37, 37, 1)",
			data: data,
			fill: "start",
		},
	],
};

var lvmdpElectric = document.getElementById("lvmdpElectric");
var lvmdpChart = new Chart(lvmdpElectric, {
	type: "line",
	data: startingData,
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 0,
				suggestedMax: 500,
				ticks: {
					callback: function (value, index, ticks) {
						return value + " kW";
					},
				},
			},
		},
		plugins: {
			title: {
				display: true,
				padding: 2,
				text: "LVMDP",
			},
			// 	subtitle: {
			// 		display: true,
			// 		text: '23-06-2024'
			// 	}
		},
	},
});

var rectiElectric = document.getElementById("rectiElectric");
var rectiChart = new Chart(rectiElectric, {
	type: "line",
	data: startingData,
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 0,
				suggestedMax: 500,
				ticks: {
					callback: function (value, index, ticks) {
						return value + " kW";
					},
				},
			},
		},
		plugins: {
			title: {
				display: true,
				padding: 2,
				text: "Rectifier",
			},
			// 	subtitle: {
			// 		display: true,
			// 		text: '23-06-2024'
			// 	}
		},
	},
});

var upsElectric = document.getElementById("upsElectric");
var upsChart = new Chart(upsElectric, {
	type: "line",
	data: startingData,
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 0,
				suggestedMax: 500,
				ticks: {
					callback: function (value, index, ticks) {
						return value + " kW";
					},
				},
			},
		},
		plugins: {
			title: {
				display: true,
				padding: 2,
				text: "UPS",
			},
			// 	subtitle: {
			// 		display: true,
			// 		text: '23-06-2024'
			// 	}
		},
	},
});

async function updateChartData() {
	let forChart = await $.ajax({
		url: baseUrl + "getdata/electricRT",
		dataType: "json",
	});

	function splitArrayData(array, data) {
		return array.map(function (item) {
			return item[data];
		});
	}

	let recti = forChart.recti;
	let ups = forChart.ups;

	let labelRecti = splitArrayData(recti, "time").reverse();
	let dataRecti = splitArrayData(recti, "loads").reverse();
	let labelUps = splitArrayData(ups, "time").reverse();
	let dataUps = splitArrayData(ups, "loads").reverse();

	rectiChart.data.labels = labelRecti;
	rectiChart.data.datasets[0].data = dataRecti;
	rectiChart.update();

	upsChart.data.labels = labelUps;
	upsChart.data.datasets[0].data = dataUps;
	upsChart.update();

	// console.log(labelUps);
}

function getDataElectric() {
	getDataRecti();
	getDataUps();
}

function updateData() {
	getDataElectric();
	updateChartData();
}

getDataElectric();
setInterval(updateData, 1000);