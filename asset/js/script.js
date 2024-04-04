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

function splitAverage(data) {
	return data.map(function (item) {
		return item.average;
	});
}

function splitLvmdp(data) {
	return data.map(function (item) {
		return item.lvmdp;
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

	const dataPue = splitAverage(pue).reverse();
   const dataLvmdp = splitLvmdp(pue).reverse();
	const labelPue = convertDates(pue).reverse();

	$("h3[id=pue]").text(lastPue);
	$("h5[id=lvmdp]").text(lvmdp);
	$("h5[id=recti]").text(recti);
	$("h5[id=ups]").text(ups);

	console.log(pue);

	var pueChart = document.getElementById("pueChart");
	var myLineChart = new Chart(pueChart, {
		type: "line",
		data: {
			labels: labelPue,
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
			labels: labelPue,
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
				},
			},
		},
	});
}

getDataIndex();
