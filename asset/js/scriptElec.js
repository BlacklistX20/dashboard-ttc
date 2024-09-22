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

function formatTimestamps(data) {
	return data.map((entry) => {
		// Extract the time portion from the 'tgl' property
		const time = entry.tgl.split(" ")[1];
		return time;
	});
}

// Function to split PUE values into a new array
function splitPUEData(array) {
	return array.map((item) => parseFloat(item.pue));
}

// Function to split Load values into a new array
function splitLoadData(array) {
	return array.map((item) => parseFloat(item.loads));
}

$(document).ready(function () {
	$("a[id=electric]").addClass("active");
	$("#date").text(namaHari + ", " + tgl);
}, startTime());

const label = ["00:00","00:00","00:00","00:00","00:00","00:00","00:00","00:00","00:00","00:00","00:00","00:00"];
const data = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
const pueConfig = {
	maintainAspectRatio: false,
	responsive: true,
	scales: {
		y: {
			min: 1.5,
			suggestedMax: 1.9,
			ticks: {
				font: {
					size: 12,
				},
			},
		},
		x: {
			ticks: {
				font: {
					size: 10,
				},
			},
		},
	},
	plugins: {
		legend: {
			display: false,
		},
		title: {
			display: true,
			padding: 3,
			text: "PUE (1 Jam)",
			font: {
				size: 18,
			},
		},
	},
};
const config = {
	maintainAspectRatio: false,
	responsive: true,
	scales: {
		y: {	
			ticks: {
				callback: function (value, index, ticks) {
					return value + " kVA";
				},
				font: {
					size: 12,
				},
			},
		},
		x: {
			ticks: {
				font: {
					size: 10,
				},
			},
		},
	},
	plugins: {
		legend: {
			display: false,
		},
		title: {
			display: true,
			padding: 3,
			font: {
				size: 18,
			},
		},
	},
};

var pueElectric = document.getElementById("pueElectric");
var pueChart = new Chart(pueElectric, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				borderColor: "rgba(245, 37, 37, 1)",
				data: data,
			}
		],
	},
	options: pueConfig,
});

var lvmdpElectric = document.getElementById("lvmdpElectric");
var lvmdpChart = new Chart(lvmdpElectric, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				borderColor: "rgba(245, 37, 37, 1)",
				data: data,
			},
		],
	},
	options: config,
});

var itElectric = document.getElementById("itElectric");
var itChart = new Chart(itElectric, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				borderColor: "rgba(245, 37, 37, 1)",
				data: data,
			},
		],
	},
	options: config,
});

var rectiElectric = document.getElementById("rectiElectric");
var rectiChart = new Chart(rectiElectric, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				borderColor: "rgba(245, 37, 37, 1)",
				data: data,
			},
		],
	},
	options: config,
});

var panelRecti = document.getElementById("panelRecti");
var panelRectiChart = new Chart(panelRecti, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				label: "Panel 2.05",
				borderColor: "rgba(231, 101, 0, 1)",
				data: data,
			},
			{
				label: "Panel 2.36",
				borderColor: "rgba(54, 164, 29, 1)",
				data: data,
			},
			{
				label: "Panel 3.05",
				borderColor: "rgba(4, 159, 154, 1)",
				data: data,
			},
			// {
			// 	label: "Panel 3.10",
			// 	borderColor: "rgba(119, 88, 255, 1)",
			// 	data: data,
			// },
			{
				label: "Panel 4.29",
				borderColor: "rgba(27, 145, 255, 1)",
				data: data,
			},
		],
	},
	options: config,
});

var upsElectric = document.getElementById("upsElectric");
var upsChart = new Chart(upsElectric, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				borderColor: "rgba(245, 37, 37, 1)",
				data: data,
			},
		],
	},
	options: config,
});

var panelUps = document.getElementById("panelUps");
var panelUpsChart = new Chart(panelUps, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				label: "UPS 2.02",
				borderColor: "rgba(231, 101, 0, 1)",
				data: data,
			},
			{
				label: "UPS 2.03",
				borderColor: "rgba(54, 164, 29, 1)",
				data: data,
			},
			{
				label: "UPS 3.01",
				borderColor: "rgba(4, 159, 154, 1)",
				data: data,
			},
			{
				label: "UPS 3.02",
				borderColor: "rgba(119, 88, 255, 1)",
				data: data,
			},
			{
				label: "UPS 5.01",
				borderColor: "rgba(247, 37, 223, 1)",
				data: data,
			},
			{
				label: "UPS 5.02",
				backgroundColor: "rgba(27, 145, 255, 0.5)",
				borderColor: "rgba(27, 145, 255, 1)",
				data: data,
			},
		],
	},
	options: config,
});

async function setChart() {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartHour",
		dataType: "json",
	});

	const labelPue = formatTimestamps(data.pue).reverse();
	const dataPue = splitPUEData(data.pue).reverse();

	const labelLvmdp = formatTimestamps(data.lvmdp).reverse();
	const dataLvmdp = splitLoadData(data.lvmdp).reverse();

	const labelIt = formatTimestamps(data.it).reverse();
	const dataIt = splitLoadData(data.it).reverse();

	const labelRecti = formatTimestamps(data.recti).reverse();
	const dataRecti = splitLoadData(data.recti).reverse();

	const labelPanelRecti = formatTimestamps(data.p205).reverse();
	const dataP205 = splitLoadData(data.p205).reverse();
	const dataP236 = splitLoadData(data.p236).reverse();
	const dataP305 = splitLoadData(data.p305).reverse();
	const dataP310 = splitLoadData(data.p310).reverse();
	const dataP429 = splitLoadData(data.p429).reverse();
	const dataPanelRecti = dataP205.concat(dataP236, dataP305, dataP429);
	const rectiMin = Math.min(...dataPanelRecti);
	const rectiMax = Math.max(...dataPanelRecti);

	const labelUps = formatTimestamps(data.ups).reverse();
	const dataUps = splitLoadData(data.ups).reverse();

	const labelPanelUps = formatTimestamps(data.ups202).reverse();
	const dataUps201 = splitLoadData(data.ups202).reverse();
	const dataUps202 = splitLoadData(data.ups203).reverse();
	const dataUps301 = splitLoadData(data.ups301).reverse();
	const dataUps302 = splitLoadData(data.ups302).reverse();
	const dataUps501 = splitLoadData(data.ups501).reverse();
	const dataUps502 = splitLoadData(data.ups502).reverse();

	// console.log(pueChart.options.scales.y);

	pueChart.data.labels = labelPue;
	pueChart.data.datasets[0].data = dataPue;
	pueChart.options.plugins.title.text = "PUE (1 Jam)";
	pueChart.options.plugins.legend.display = false;
	pueChart.update();

	lvmdpChart.data.labels = labelLvmdp;
	lvmdpChart.data.datasets[0].data = dataLvmdp;
	lvmdpChart.options.plugins.title.text = "LVMDP (1 Jam)";
	lvmdpChart.options.plugins.legend.display = false;
	lvmdpChart.update();

	itChart.data.labels = labelIt;
	itChart.data.datasets[0].data = dataIt;
	itChart.options.plugins.title.text = "IT (1 Jam)"
	itChart.options.plugins.legend.display = false;
	itChart.update();

	rectiChart.data.labels = labelRecti;
	rectiChart.data.datasets[0].data = dataRecti;
	rectiChart.options.plugins.title.text = "Recti (1 Jam)"
	rectiChart.options.plugins.legend.display = false;
	rectiChart.update();

	panelRectiChart.data.labels = labelPanelRecti;
	panelRectiChart.data.datasets[0].data = dataP205;
	panelRectiChart.data.datasets[1].data = dataP236;
	panelRectiChart.data.datasets[2].data = dataP305;
	panelRectiChart.data.datasets[3].data = dataP429;
	panelRectiChart.options.plugins.title.text = "Panel Recti (1 Jam)";
	panelRectiChart.options.plugins.legend.display = true;
	panelRectiChart.scales[0] = {
		min: rectiMin,
		max: rectiMax
	};
	panelRectiChart.update();

	upsChart.data.labels = labelUps;
	upsChart.data.datasets[0].data = dataUps;
	upsChart.options.plugins.title.text = "UPS (1 Jam)"
	upsChart.options.plugins.legend.display = false;
	upsChart.update();

	panelUpsChart.data.labels = labelPanelUps;
	panelUpsChart.data.datasets[0].data = dataUps201;
	panelUpsChart.data.datasets[1].data = dataUps202;
	panelUpsChart.data.datasets[2].data = dataUps301
	panelUpsChart.data.datasets[3].data = dataUps302;
	panelUpsChart.data.datasets[4].data = dataUps501;
	panelUpsChart.data.datasets[5].data = dataUps502;
	panelUpsChart.options.plugins.title.text = "Panel UPS (1 Jam)";
	panelUpsChart.options.plugins.legend.display = true;
	panelUpsChart.update();
}

setChart();

async function updateChart() {
	let data = await $.ajax({
		url: baseUrl + "getdata/pueChartUpdate",
		dataType: "json",
	});

	const labelPue = data.pue.tgl.split(" ")[1];
	const dataPue = data.pue.pue;

	const labelLvmdp = data.lvmdp.tgl.split(" ")[1];
	const dataLvmdp = data.lvmdp.loads;

	const labelIt = data.it.tgl.split(" ")[1];
	const dataIt = data.it.loads;

	pueChart.data.labels.push(labelPue);
	pueChart.data.labels.shift();
	pueChart.data.datasets[0].data.push(dataPue);
	pueChart.data.datasets[0].data.shift();
	pueChart.update();

	lvmdpChart.data.labels.push(labelLvmdp);
	lvmdpChart.data.labels.shift();
	lvmdpChart.data.datasets[0].data.push(dataLvmdp);
	lvmdpChart.data.datasets[0].data.shift();
	lvmdpChart.update();

	itChart.data.labels.push(labelIt);
	itChart.data.labels.shift();
	itChart.data.datasets[0].data.push(dataIt);
	itChart.data.datasets[0].data.shift();
	itChart.update();

	// console.log(data.it);
}

let pueChartToHour = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartHour",
		dataType: "json",
	});

	const labelPue = formatTimestamps(data.pue).reverse();
	const dataPue = splitPUEData(data.pue).reverse();

	pueChart.data.labels = labelPue;
	pueChart.data.datasets[0].data = dataPue;
	pueChart.options.plugins.title.text = "PUE (1 Jam)";
	pueChart.update();
}

let pueChartToDay = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartDay",
		dataType: "json",
	});

	const labelPue = formatTimestamps(data.pue).reverse();
	const dataPue = splitPUEData(data.pue).reverse();

	pueChart.data.labels = labelPue;
	pueChart.data.datasets[0].data = dataPue;
	pueChart.options.plugins.title.text = "PUE (1 Hari)";
	pueChart.update();
};

let pueChartToWeek = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartWeek",
		dataType: "json",
	});

	const labelPue = formatTimestamps(data.pue).reverse();
	const dataPue = splitPUEData(data.pue).reverse();

	pueChart.data.labels = labelPue;
	pueChart.data.datasets[0].data = dataPue;
	pueChart.options.plugins.title.text = "PUE (1 Minggu)";
	pueChart.update();
};

let lvmdpChartToHour = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartHour",
		dataType: "json",
	});

	const labelLvmdp = formatTimestamps(data.lvmdp).reverse();
	const dataLvmdp = splitLoadData(data.lvmdp).reverse();

	lvmdpChart.data.labels = labelLvmdp;
	lvmdpChart.data.datasets[0].data = dataLvmdp;
	lvmdpChart.options.plugins.title.text = "LVMDP (1 Jam)";
	lvmdpChart.update();
}
let lvmdpChartToDay = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartDay",
		dataType: "json",
	});

	const labelLvmdp = formatTimestamps(data.lvmdp).reverse();
	const dataLvmdp = splitLoadData(data.lvmdp).reverse();

	lvmdpChart.data.labels = labelLvmdp;
	lvmdpChart.data.datasets[0].data = dataLvmdp;
	lvmdpChart.options.plugins.title.text = "LVMDP (1 Hari)";
	lvmdpChart.update();
};

let lvmdpChartToWeek = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartWeek",
		dataType: "json",
	});

	const labelLvmdp = formatTimestamps(data.lvmdp).reverse();
	const dataLvmdp = splitLoadData(data.lvmdp).reverse();

	lvmdpChart.data.labels = labelLvmdp;
	lvmdpChart.data.datasets[0].data = dataLvmdp;
	lvmdpChart.options.plugins.title.text = "LVMDP (1 Minggu)";
	lvmdpChart.update();
};

let itChartToHour = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartHour",
		dataType: "json",
	});

	const labelIt = formatTimestamps(data.it).reverse();
	const dataIt = splitLoadData(data.it).reverse();

	itChart.data.labels = labelIt;
	itChart.data.datasets[0].data = dataIt;
	itChart.options.plugins.title.text = "IT (1 Jam)"
	itChart.update();
}
let itChartToDay = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartDay",
		dataType: "json",
	});

	const labelIt = formatTimestamps(data.it).reverse();
	const dataIt = splitLoadData(data.it).reverse();

	itChart.data.labels = labelIt;
	itChart.data.datasets[0].data = dataIt;
	itChart.options.plugins.title.text = "IT (1 Hari)"
	itChart.update();
};

let itChartToWeek = async () => {
	let data = await $.ajax({
		url: baseUrl + "getdata/electricChartWeek",
		dataType: "json",
	});

	const labelIt = formatTimestamps(data.it).reverse();
	const dataIt = splitLoadData(data.it).reverse();

	itChart.data.labels = labelIt;
	itChart.data.datasets[0].data = dataIt;
	itChart.options.plugins.title.text = "IT (1 Minggu)"
	itChart.update();
};

$("#pueDay").click(() => {
	$("#pueHour").removeClass("active");
	$("#pueWeek").removeClass("active");
	$("#pueDay").addClass("active");
	pueChartToDay();
});
$("#pueWeek").click(() => {
	$("#pueHour").removeClass("active");
	$("#pueDay").removeClass("active");
	$("#pueWeek").addClass("active");
	pueChartToWeek();
});
$("#pueHour").click(() => {
	$("#pueDay").removeClass("active");
	$("#pueWeek").removeClass("active");
	$("#pueHour").addClass("active");
	pueChartToHour();
});

$("#lvmdpDay").click(() => {
	$("#lvmdpHour").removeClass("active");
	$("#lvmdpWeek").removeClass("active");
	$("#lvmdpDay").addClass("active");
	lvmdpChartToDay();
});
$("#lvmdpWeek").click(() => {
	$("#lvmdpHour").removeClass("active");
	$("#lvmdpDay").removeClass("active");
	$("#lvmdpWeek").addClass("active");
	lvmdpChartToWeek();
});
$("#lvmdpHour").click(() => {
	$("#lvmdpDay").removeClass("active");
	$("#lvmdpWeek").removeClass("active");
	$("#lvmdpHour").addClass("active");
	lvmdpChartToHour();
});

$("itDay").click(() => {
	$("itHour").removeClass("active");
	$("itWeek").removeClass("active");
	$("itDay").addClass("active");
	itChartToDay();
});
$("itWeek").click(() => {
	$("itHour").removeClass("active");
	$("itDay").removeClass("active");
	$("itWeek").addClass("active");
	itChartToWeek();
});
$("itHour").click(() => {
	$("itDay").removeClass("active");
	$("itWeek").removeClass("active");
	$("itHour").addClass("active");
	itChartToHour();
});

setInterval(updateChart, 300000)

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

getDataElectric();
setInterval(getDataElectric, 1000);
