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

var pueElectric = document.getElementById("pueElectric");
var lvmdpElectric = document.getElementById("lvmdpElectric");
var itElectric = document.getElementById("itElectric");
var rectiElectric = document.getElementById("rectiElectric");
var panelRecti = document.getElementById("panelRecti");
var upsElectric = document.getElementById("upsElectric");
var panelUps = document.getElementById("panelUps");

async function setChart() {
	let data = await $.ajax({
		url: baseUrl + "getdata/pueChart",
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

	const labelUps = formatTimestamps(data.ups).reverse();
	const dataUps = splitLoadData(data.ups).reverse();
	
	const labelPanelUps = formatTimestamps(data.ups202).reverse();
	const dataUps201 = splitLoadData(data.ups202).reverse();
	const dataUps202 = splitLoadData(data.ups203).reverse();
	const dataUps301 = splitLoadData(data.ups301).reverse();
	const dataUps302 = splitLoadData(data.ups302).reverse();
	const dataUps501 = splitLoadData(data.ups501).reverse();
	const dataUps502 = splitLoadData(data.ups502).reverse();

	// console.log(data.ups201);

	var pueChart = new Chart(pueElectric, {
		type: "line",
		data: {
			labels: labelPue,
			datasets: [
				{
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataPue,
				},
			],
		},
		options: {
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
					text: "PUE",
					font: {
						size: 18,
					},
				},
			},
		},
	});

	var lvmdpChart = new Chart(lvmdpElectric, {
		type: "line",
		data: {
			labels: labelLvmdp,
			datasets: [
				{
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataLvmdp,
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 580,
					max: 780,
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
					text: "LVMDP (Load)",
					font: {
						size: 18,
					},
				},
			},
		},
	});

	var itChart = new Chart(itElectric, {
		type: "line",
		data: {
			labels: labelIt,
			datasets: [
				{
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataIt,
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 350,
					max: 360,
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
					text: "IT (Load)",
					font: {
						size: 18,
					},
				},
			},
		},
	});

	var rectiChart = new Chart(rectiElectric, {
		type: "line",
		data: {
			labels: labelRecti,
			datasets: [
				{
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataRecti,
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 240,
					max: 250,
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
					text: "Recti (Load)",
					font: {
						size: 18,
					},
				},
			},
		},
	});
	
	
	var panelRectiChart = new Chart(panelRecti, {
		type: "line",
		data: {
			labels: labelPanelRecti,
			datasets: [
				{
					label: "Panel 2.05",
					borderColor: "rgba(231, 101, 0, 1)",
					data: dataP205,
				},
				{
					label: "Panel 2.36",
					borderColor: "rgba(54, 164, 29, 1)",
					data: dataP236,
				},
				{
					label: "Panel 3.05",
					borderColor: "rgba(4, 159, 154, 1)",
					data: dataP305,
				},
				// {
				// 	label: "Panel 3.10",
				// 	borderColor: "rgba(119, 88, 255, 1)",
				// 	data: dataP310,
				// },
				{
					label: "Panel 4.29",
					borderColor: "rgba(27, 145, 255, 1)",
					data: dataP429,
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 60,
					max: 70,
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
				title: {
					display: true,
					padding: 3,
					text: "Recti (Load)",
					font: {
						size: 18,
					},
				},
			},
		},
	});
	
	
	var upsChart = new Chart(upsElectric, {
		type: "line",
		data: {
			labels: labelUps,
			datasets: [
				{
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataUps,
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 106,
					max: 112,
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
					text: "UPS (Load)",
					font: {
						size: 18,
					},
				},
			},
		},
	});
	
	var panelUpsChart = new Chart(panelUps, {
		type: "line",
		data: {
			labels: labelPanelRecti,
			datasets: [
				{
					label: "UPS 2.02",
					borderColor: "rgba(231, 101, 0, 1)",
					data: dataUps201,
				},
				{
					label: "UPS 2.03",
					borderColor: "rgba(54, 164, 29, 1)",
					data: dataUps202,
				},
				{
					label: "UPS 3.01",
					borderColor: "rgba(4, 159, 154, 1)",
					data: dataUps301,
				},
				{
					label: "UPS 3.02",
					borderColor: "rgba(119, 88, 255, 1)",
					data: dataUps302,
				},
				{
					label: "UPS 5.01",
					borderColor: "rgba(247, 37, 223, 1)",
					data: dataUps501,
				},
				{
					label: "UPS 5.02",
					backgroundColor: "rgba(27, 145, 255, 0.5)",
					borderColor: "rgba(27, 145, 255, 1)",
					data: dataUps502,
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 10,
					max: 30,
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
				title: {
					display: true,
					padding: 3,
					text: "Recti (Load)",
					font: {
						size: 18,
					},
				},
			},
		},
	});
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

	pueChart.data.dataset.data.push(dataPue);
	pueChart.data.dataset.data.shift();

	lvmdpChart.data.labels.push(labelLvmdp);
	lvmdpChart.data.labels.shift();

	lvmdpChart.data.dataset.data.push(dataLvmdp);
	lvmdpChart.data.dataset.data.shift();

	itChart.data.labels.push(labelIt);
	itChart.data.labels.shift();

	itChart.data.dataset.data.push(dataIt);
	itChart.data.dataset.data.shift();

	pueChart.update();
	lvmdpChart.update();
	itChart.update();

	// console.log(data.it);
};

// setInterval(updateChart, 5000)

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
setInterval(updateChartPue, 3000);
