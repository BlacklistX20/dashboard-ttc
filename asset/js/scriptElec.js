import { pue, setPue, getPue } from "./module/pue.js";
import { result, getLvmdp, setLvmdp } from "./module/lvmdp.js";
import { setIt } from "./module/it.js";
import {
	setPanel205,
	setPanel236,
	setPanel305,
	setPanel310,
	setPanel429,
	setRecti,
} from "./module/recti.js";
import { setPanelIo2, setPanelIo3, setPanelIo5, setUps } from "./module/ups.js";

// let pue;
function formatTimestamps(data) {
	return data.map((entry) => {
		// Extract the time portion from the 'tgl' property
		const time = entry.tgl.split(" ")[1];
		return time;
	});
}

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
			// backgroundColor: "rgba(245, 37, 37, 0.5)",
			borderColor: "rgba(245, 37, 37, 1)",
			data: data,
			// fill: "start",
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

const startingDataUps = {
	labels: label,
	datasets: [
		{
			label: "UPS 2.02",
			backgroundColor: "rgba(231, 101, 0, 0.5)",
			borderColor: "rgba(231, 101, 0, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "UPS 2.03",
			backgroundColor: "rgba(54, 164, 29, 0.5)",
			borderColor: "rgba(54, 164, 29, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "UPS 3.01",
			backgroundColor: "rgba(4, 159, 154, 0.5)",
			borderColor: "rgba(4, 159, 154, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "UPS 3.02",
			backgroundColor: "rgba(119, 88, 255, 0.5)",
			borderColor: "rgba(119, 88, 255, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "UPS 5.01",
			backgroundColor: "rgba(27, 145, 255, 0.5)",
			borderColor: "rgba(27, 145, 255, 1)",
			data: data,
			fill: "start",
		},
		{
			label: "UPS 5.02",
			backgroundColor: "rgba(27, 145, 255, 0.5)",
			borderColor: "rgba(27, 145, 255, 1)",
			data: data,
			fill: "start",
		},
	],
};

async function setChart() {
	let data = await $.ajax({
		url: baseUrl + "getdata/pueChart",
		dataType: "json",
	});

	const label = formatTimestamps(data);

	console.log(label);
}

setChart();

var pueElectric = document.getElementById("pueElectric");
var pueChart = new Chart(pueElectric, {
	type: "line",
	data: startingData,
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 1.3,
				suggestedMax: 1.9,
			},
		},
		plugins: {
			title: {
				display: true,
				padding: 2,
				text: "PUE",
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
						return value + " kVA";
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
						return value + " kVA";
					},
				},
			},
		},
		plugins: {
			title: {
				display: true,
				padding: 2,
				text: "IT (Recti + UPS)",
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
						return value + " kVA";
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
						return value + " kVA";
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
						return value + " kVA";
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

var panelUps = document.getElementById("panelUps");
var panelUpsChart = new Chart(panelUps, {
	type: "line",
	data: startingDataUps,
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 80,
				suggestedMax: 90,
				ticks: {
					callback: function (value, index, ticks) {
						return value + " kVA";
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

const dataPue = data.toSpliced(0, 0);
const labelPue = data.toSpliced(0, 0);
function updateChartPue() {
	getPue().then(() => {
		let time = hariIni.toLocaleString("id-ID", { timeStyle: "short" });

		dataPue.push(pue);
		dataPue.shift();

		labelPue.push(time);
		labelPue.shift();

		// console.log(dataPue);

		// pueChart.data.labels = labelPue;
		// pueChart.data.datasets[0].data = dataPue;
		// pueChart.update();
	});
}

function updateChartLvmdp() {
	getLvmdp().then(() => {
		let p = parseFloat(result);
		let time = hariIni.toLocaleString("id-ID", { timeStyle: "short" });

		let dataLvmdp = data;
		let labelLvmdp = label;

		dataLvmdp.push(p);
		dataLvmdp.shift();

		labelLvmdp.push(time);
		labelLvmdp.shift();

		// console.log(dataLvmdp);

		lvmdpChart.data.labels = labelLvmdp;
		lvmdpChart.data.datasets[0].data = dataLvmdp;
		lvmdpChart.update();
	});
}

// function updateChartRecti() {
// 	getRecti().then(() => {
// 		let recti = dataRecti.recti.p;
// 		let time = hariIni.toLocaleString("id-ID", { timeStyle: "short" });

// 		let dataRecty = data;
// 		let labelRecti = label;

// 		dataRecty.push(recti);
// 		dataRecty.shift();

// 		labelRecti.push(time);
// 		labelRecti.shift();

// 		// console.log(dataRecty);

// 		rectiChart.data.labels = labelRecti;
// 		rectiChart.data.datasets[0].data = dataRecty;
// 		rectiChart.update();
// 	});
// }

// function updateChartPanelRecti() {
// 	let p429 = dataRecti.p429.p;
// 	let p305 = dataRecti.p305.p;
// 	let p310 = 0;
// 	let p205 = dataRecti.p205.p;
// 	let p236 = dataRecti.p236.p;
// 	let time = hariIni.toLocaleString("id-ID", { timeStyle: "short" });

// 	let data429 = data;
// 	let label429 = label;
// 	let data305 = data;
// 	let label305 = label;
// 	let data310 = data;
// 	let label310 = label;
// 	let data205 = data;
// 	let label205 = label;
// 	let data236 = data;
// 	let label236 = label;

// 	data429.push(p429);
// 	data429.shift();

// 	label429.push(time);
// 	label429.shift();

// 	panelRectiChart.data.labels = label429;
// 	panelRectiChart.data.datasets[0].data = data429;
// 	panelRectiChart.update();
// }

async function getDataElectric() {
	await setPue();
	await setLvmdp();
	await setIt();
	await setPanel205();
	await setPanel236();
	await setPanel305();
	await setPanel310();
	await setPanel429();
	await setRecti();
	await setPanelIo2();
	await setPanelIo3();
	await setPanelIo5();
	await setUps();
}

// function updateData() {
// 	updateChartPue();
// 	updateChartLvmdp();
// }

getDataElectric();
setInterval(getDataElectric, 1000);
setInterval(updateChartPue, 3000);
