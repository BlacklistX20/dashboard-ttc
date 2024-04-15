$(document).ready(function () {
	$("a[id=index]").addClass("active");
});

Chart.defaults.font.size = 20;

function formatDate(dateString) {
	// Split the date string into parts
	var parts = dateString.split("-");

	// Extract day and month
	var day = parts[2];
	var month = parts[1];

	// Construct the formatted date
	var formattedDate = day + "/" + month;

	return formattedDate;
}

function convertDates(data) {
	return data.map(function (item) {
		return formatDate(item.tgl);
	});
}

function splitArrayData(array, data) {
	return array.map(function (item) {
		return item[data];
	});
}

async function getDataIndex() {
	var data = await $.ajax({
		url: baseUrl + "getdata/main",
		dataType: "json",
	});

	var pue = data.pue;
	var lastPue = pue[0]["average"];
	var lvmdp = pue[0]["lvmdp"];
	var recti = pue[0]["recti"];
	var ups = pue[0]["ups"];

	const dataPue = splitArrayData(pue, "average").reverse();
	const dataLvmdp = splitArrayData(pue, "lvmdp").reverse();
	const dataRecti = splitArrayData(pue, "recti").reverse();
	const dataUps = splitArrayData(pue, "ups").reverse();
	const label = convertDates(pue).reverse();

	$("h3[id=pue]").text(lastPue);
	$("span[id=lvmdp]").text(lvmdp);
	$("span[id=recti]").text(recti);
	$("span[id=ups]").text(ups);

	console.log(dataLvmdp);

	var pueChart = document.getElementById("pueChart");
	var myLineChart = new Chart(pueChart, {
		type: "line",
		data: {
			labels: label,
			datasets: [
				{
					label: "PUE",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataPue,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 1.5,
					max: 2,
				},
			},
		},
	});

	var lvmdp = document.getElementById("lvmdpChart");
	var myBarChart = new Chart(lvmdp, {
		type: "bar",
		data: {
			labels: label,
			datasets: [
				{
					label: "LVMDP",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataLvmdp,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 400,
					max: 800,
					ticks: {
						callback: function (value, index, ticks) {
							return value + " kW";
						},
					},
				},
			},
		},
	});

	var recti = document.getElementById("rectiChart");
	var myBarChart = new Chart(recti, {
		type: "bar",
		data: {
			labels: label,
			datasets: [
				{
					label: "Rectifier",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataRecti,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 200,
					max: 250,
					ticks: {
						callback: function (value, index, ticks) {
							return value + " kW";
						},
					},
				},
			},
		},
	});

	var ups = document.getElementById("upsChart");
	var myBarChart = new Chart(ups, {
		type: "bar",
		data: {
			labels: label,
			datasets: [
				{
					label: "UPS",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataUps,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 90,
					max: 110,
					ticks: {
						callback: function (value, index, ticks) {
							return value + " kW";
						},
					},
				},
			},
		},
	});

	var dailyFuel = document.getElementById("dailyFuelChart");
	var myBarChart = new Chart(dailyFuel, {
		type: "bar",
		data: {
			labels: label,
			datasets: [
				{
					label: "Tangki Harian (Random Data)",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: [186, 196, 188, 189, 196, 168, 189, 185, 168, 167, 185, 190],
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 150,
					max: 200,
					ticks: {
						callback: function (value, index, ticks) {
							return value + " Liter";
						},
					},
				},
			},
		},
	});

	var monthlyFuel = document.getElementById("monthlyFuelChart");
	var myBarChart = new Chart(monthlyFuel, {
		type: "bar",
		data: {
			labels: label,
			datasets: [
				{
					label: "Tangki Bulanan (Random Data)",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: [186, 196, 188, 189, 196, 168, 189, 185, 168, 167, 185, 190],
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 150,
					max: 200,
					ticks: {
						callback: function (value, index, ticks) {
							return value + " Liter";
						},
					},
				},
			},
		},
	});

	var dcTemp = document.getElementById("dcTempChart");
	var myBarChart = new Chart(dcTemp, {
		type: "bar",
		data: {
			labels: label,
			datasets: [
				{
					label: "Suhu Data Center (Random Data)",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: [16, 19, 18, 19, 16, 18, 19, 15, 18, 17, 15, 19],
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 0,
					max: 25,
					ticks: {
						callback: function (value, index, ticks) {
							return value + " C";
						},
					},
				},
			},
		},
	});
}

getDataIndex();
