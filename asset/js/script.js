$(document).ready(function () {
	$("a[id=index]").addClass("active");
});

Chart.defaults.font.size = 20;
const label = ["01/01", "02/01", "03/01", "04/01", "05/01", "06/01", "07/01"];
const data = [1.61, 1.81, 1.77, 1.67, 1.69, 1.83, 1.72];

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
		return formatDate(item.date);
	});
}

function splitArrayData(array, data) {
	return array.map(function (item) {
		return item[data];
	});
}

function formatDateTime(data) {
	return data.map((entry) => {
		const dateParts = entry.date.split("-");
		const formattedDate = `${dateParts[2]}-${dateParts[1]}`;
		const timeParts = entry.time.split(":");
		const formattedTime = `${timeParts[0]}:${timeParts[1]}`;
		return formattedDate + " " + formattedTime;
	});
}

async function setPue() {
	var pue = await $.ajax({
		url: baseUrl + "getdata/main",
		dataType: "json",
	});

	let dateFirst = new Date(pue.avgPueWeekly.startDate);
	let dateLast = new Date(pue.avgPueWeekly.endDate);
	let startDate = dateFirst.toLocaleString("id-ID", {
		day: "numeric",
		month: "long",
	});
	let endDate = dateLast.toLocaleString("id-ID", {
		day: "numeric",
		month: "long",
	});

	$("#weekDay").text(startDate + " sampai " + endDate);
	$("#pueWeekly").text(pue.avgPueWeekly.pue);
	$("#pueMin").text(pue.min[0].pue);
	$("#pueAvg").text(parseFloat(pue.avg[0].pue).toFixed(2));
	$("#pueMax").text(pue.max[0].pue);
	// console.log(startDate + " sampai " + endDate);
}

async function setPueChart() {
	var pue = await $.ajax({
		url: baseUrl + "getdata/mainChart",
		dataType: "json",
	});

	const labelMorning = convertDates(pue.morning).reverse();
	const labelNoon = convertDates(pue.noon).reverse();
	const labelNight = convertDates(pue.night).reverse();
	const labelPueWeek = formatDateTime(pue.pueWeek);

	const dataMorning = splitArrayData(pue.morning, "pue").reverse();
	const dataNoon = splitArrayData(pue.noon, "pue").reverse();
	const dataNight = splitArrayData(pue.night, "pue").reverse();
	const dataPueWeek = splitArrayData(pue.pueWeek, "pue");

	console.log(dataPueWeek);

	var pueMonth = document.getElementById("pueMonth");
	var pueMonthChart = new Chart(pueMonth, {
		type: "line",
		data: {
			labels: labelPueWeek,
			datasets: [
				{
					label: "PUE Mingguan",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataPueWeek,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 1.2,
					max: 2.2,
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
		},
	});

	var pueMorning = document.getElementById("pueMorning");
	var pueMorningChart = new Chart(pueMorning, {
		type: "bar",
		data: {
			labels: labelMorning,
			datasets: [
				{
					label: "PUE Pagi",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataMorning,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 1.2,
					max: 2.2,
					ticks: {
						font: {
							size: 18,
						},
					},
				},
			},
		},
	});

	var pueNoon = document.getElementById("pueNoon");
	var pueNoonChart = new Chart(pueNoon, {
		type: "bar",
		data: {
			labels: labelNoon,
			datasets: [
				{
					label: "PUE Siang",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataNoon,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 1.2,
					max: 2.2,
					ticks: {
						font: {
							size: 18,
						},
					},
				},
			},
		},
	});

	var pueNight = document.getElementById("pueNight");
	var pueNightChart = new Chart(pueNight, {
		type: "bar",
		data: {
			labels: labelNight,
			datasets: [
				{
					label: "PUE Malam",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataNight,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			responsive: true,
			scales: {
				y: {
					min: 1.2,
					max: 2.2,
					ticks: {
						font: {
							size: 18,
						},
					},
				},
			},
		},
	});
}

setInterval(setPue, 1000);
setPueChart();

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

// async function getDataIndex() {
// 	var data = await $.ajax({
// 		url: baseUrl + "getdata/main",
// 		dataType: "json",
// 	});

// 	var pue = data.weekly;
// 	var lastMonth = data.avgLastMonth;
// 	var pueLastMonth = lastMonth.average;
// 	var lvmdpLastMonth = lastMonth.lvmdp;
// 	var rectiLastMonth = lastMonth.recti;
// 	var upsLastMonth = lastMonth.ups;

// 	var tgl = new Date(data['avgLastMonth'][0])
// 	var month = tgl.toLocaleString("id-ID", { month: "long" });
// 	var year = tgl.toLocaleString("id-ID", { year: "numeric" });

// 	const dataPue = splitArrayData(pue, "average").reverse();
// 	const dataLvmdp = splitArrayData(pue, "lvmdp").reverse();
// 	const dataRecti = splitArrayData(pue, "recti").reverse();
// 	const dataUps = splitArrayData(pue, "ups").reverse();
// 	const label = convertDates(pue).reverse();

// 	$("p[id=pue]").text(pueLastMonth.toFixed(2));
// 	$("span[id=lvmdp]").text(lvmdpLastMonth.toFixed(2));
// 	$("span[id=recti]").text(rectiLastMonth.toFixed(2));
// 	$("span[id=ups]").text(upsLastMonth.toFixed(2));
// 	$("span[id=month]").text(month);
// 	$("span[id=year]").text(year);

// 	console.log(year);

// }

// getDataIndex();
