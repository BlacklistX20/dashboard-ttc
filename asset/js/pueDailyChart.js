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

$(document).ready(getDailyPue());

async function getDailyPue() {
	var pue = await $.ajax({
		url: baseUrl + "getdata/pueWeekly",
		dataType: "json",
	});

	var pagi = pue.pagi;
	var siang = pue.siang;
	var malam = pue.malam;

	const dataPagi = [
		pagi[0].pue,
		pagi[1].pue,
		pagi[2].pue,
		pagi[3].pue,
		pagi[4].pue,
		pagi[5].pue,
		pagi[6].pue,
	].reverse();
	const dataSiang = [
		siang[0].pue,
		siang[1].pue,
		siang[2].pue,
		siang[3].pue,
		siang[4].pue,
		siang[5].pue,
		siang[6].pue,
	].reverse();
	const dataMalam = [
		malam[0].pue,
		malam[1].pue,
		malam[2].pue,
		malam[3].pue,
		malam[4].pue,
		malam[5].pue,
		malam[6].pue,
	].reverse();

	const labelPagi = convertDates(pagi).reverse();
	const labelSiang = convertDates(siang).reverse();
	const labelMalam = convertDates(malam).reverse();

	// console.log(labelPagi);

	var pagi = document.getElementById("puePagi");
	var myBarChart = new Chart(pagi, {
		type: "bar",
		data: {
			labels: labelPagi,
			datasets: [
				{
					label: "Waktu 6 Pagi",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataPagi,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			scales: {
				y: {
					Min: 0,
					Max: 2,
				},
			},
		},
	});

	var siang = document.getElementById("pueSiang");
	var myBarChart = new Chart(siang, {
		type: "bar",
		data: {
			labels: labelSiang,
			datasets: [
				{
					label: "Waktu 2 Siang",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataSiang,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			scales: {
				y: {
					Min: 0,
					Max: 2,
				},
			},
		},
	});

	var malam = document.getElementById("pueMalam");
	var myBarChart = new Chart(malam, {
		type: "bar",
		data: {
			labels: labelMalam,
			datasets: [
				{
					label: "Waktu 8 Malam",
					backgroundColor: "rgba(245, 37, 37, 0.5)",
					borderColor: "rgba(245, 37, 37, 1)",
					data: dataMalam,
					fill: "start",
				},
			],
		},
		options: {
			maintainAspectRatio: false,
			scales: {
				y: {
					Min: 0,
					Max: 2,
				},
			},
		},
	});
}
