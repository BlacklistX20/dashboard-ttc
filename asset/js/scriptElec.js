import { setLvmdp } from "./module/lvmdp.js";
import { setIt } from "./module/it.js";
import { dataRecti, getRecti, setRecti } from "./module/recti.js";
import { dataUps, getUps, setUps } from "./module/ups.js";

$(document).ready(function () {
	$("a[id=electric]").addClass("active");
	$("#date").text(namaHari + ", " + tgl);
}, startTime());

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
];
const data = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
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

const startingDataRecti = {
	labels: label,
	datasets: [
		{
			label: "Panel 2.05",
			backgroundColor: "rgba(231, 101, 0, 0.5)",
			borderColor: "rgba(231, 101, 0, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "Panel 2.36",
			backgroundColor: "rgba(54, 164, 29, 0.5)",
			borderColor: "rgba(54, 164, 29, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "Panel 3.05",
			backgroundColor: "rgba(4, 159, 154, 0.5)",
			borderColor: "rgba(4, 159, 154, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "Panel 3.10",
			backgroundColor: "rgba(119, 88, 255, 0.5)",
			borderColor: "rgba(119, 88, 255, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "Panel 4.29",
			backgroundColor: "rgba(27, 145, 255, 0.5)",
			borderColor: "rgba(27, 145, 255, 1)",
			data: data,
			fill: "start",
		},
	],
};

var pueElectric = document.getElementById("pueElectric");
var pueChart = new Chart(pueElectric, {
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

var itElectric = document.getElementById("itElectric");
var itChart = new Chart(itElectric, {
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
				min: 300,
				suggestedMax: 310,
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

var panelRecti = document.getElementById("panelRecti");
var panelRectiChart = new Chart(panelRecti, {
	type: "line",
	data: startingDataRecti,
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 0,
				suggestedMax: 100,
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
				min: 80,
				suggestedMax: 90,
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

function updateChartRecti() {
	getRecti().then(() => {
		let recti = dataRecti.recti.p;
		let time = hariIni.toLocaleString("id-ID", { timeStyle: "short" });

		let dataRecty = data;
		let labelRecti = label;

		dataRecty.push(recti);
		dataRecty.shift();

		labelRecti.push(time);
		labelRecti.shift();

		console.log(dataRecty);

		rectiChart.data.labels = labelRecti;
		rectiChart.data.datasets[0].data = dataRecty;
		rectiChart.update();
	});
}

function updateChartPanelRecti() {
	let p429 = dataRecti.p429.p;
	let p305 = dataRecti.p305.p;
	let p310 = 0;
	let p205 = dataRecti.p205.p;
	let p236 = dataRecti.p236.p;
	let time = hariIni.toLocaleString("id-ID", { timeStyle: "short" });

	let data429 = data;
	let label429 = label;
	let data305 = data;
	let label305 = label;
	let data310 = data;
	let label310 = label;
	let data205 = data;
	let label205 = label;
	let data236 = data;
	let label236 = label;

	data429.push(p429);
	data429.shift();

	label429.push(time);
	label429.shift();

	panelRectiChart.data.labels = label429;
	panelRectiChart.data.datasets[0].data = data429;
	panelRectiChart.update();
}

async function getDataElectric() {
	await setRecti();
	await setUps();
	await setLvmdp();
	await setIt();
}

function updateData() {
	updateChartRecti();
	updateChartPanelRecti();
}

getDataElectric();
setInterval(getDataElectric, 1000);
setInterval(updateData, 3000);
