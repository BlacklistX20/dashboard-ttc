$(document).ready(
	function () {
		$("a[id=electric]").addClass("active");
		$("#date").text(namaHari + ", " + tgl);
	},
	getDataElectric(),
	setInterval(updateData, 1000),
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

function avg(...nums) {
	let sum = 0;
	nums.forEach((num) => {
		sum += num;
	});
	let avg = sum / nums.length;
	return avg;
}

function sum(...nums) {
	let sum = 0;
	nums.forEach((num) => {
		sum += num;
	});
	return sum;
}

function getDataElectric() {
	getDataRecti();
	getDataUps();
}

function updateData() {
	getDataElectric();
	updateChartData();
}

async function getDataRecti() {
	let rectiPanel = await $.ajax({
		url: baseUrl + "getdata/recti",
		dataType: "json",
	});

	let load205 = parseFloat(rectiPanel.p205.loads);
	let voltage205 = parseFloat(rectiPanel.p205.voltage);
	let current205 = parseFloat(rectiPanel.p205.current);
	let frequency205 = parseFloat(rectiPanel.p205.frequency);

	let load236 = parseFloat(rectiPanel.p236.loads);
	let voltage236 = parseFloat(rectiPanel.p236.voltage);
	let current236 = parseFloat(rectiPanel.p236.current);
	let frequency236 = parseFloat(rectiPanel.p236.frequency);

	let load305 = parseFloat(rectiPanel.p305.loads);
	let voltage305 = parseFloat(rectiPanel.p305.voltage);
	let current305 = parseFloat(rectiPanel.p305.current);
	let frequency305 = parseFloat(rectiPanel.p305.frequency);

	let load310 = parseFloat(rectiPanel.p310.loads);
	let voltage310 = parseFloat(rectiPanel.p310.voltage);
	let current310 = parseFloat(rectiPanel.p310.current);
	let frequency310 = parseFloat(rectiPanel.p310.frequency);

	let load429 = parseFloat(rectiPanel.p429.loads);
	let voltage429 = parseFloat(rectiPanel.p429.voltage);
	let current429 = parseFloat(rectiPanel.p429.current);
	let frequency429 = parseFloat(rectiPanel.p429.frequency);

	let pRecti = sum(load205, load236, load305, load429).toFixed(2);
	let vRecti = avg(voltage205, voltage236, voltage305, voltage429).toFixed(2);
	let iRecti = avg(current205, current236, current305, current429).toFixed(2);
	let fRecti = avg(
		frequency205,
		frequency236,
		frequency305,
		frequency429
	).toFixed(2);

	let rectiTotal = await $.ajax({
		url: baseUrl + "electric/recti",
		type: "post",
		data: {
			p: pRecti,
			v: vRecti,
			i: iRecti,
			f: fRecti,
		},
		dataType: "json",
	});

	$("#load205").text(load205);
	$("#voltage205").text(voltage205);
	$("#current205").text(current205);
	$("#frequency205").text(frequency205);

	$("#load236").text(load236);
	$("#voltage236").text(voltage236);
	$("#current236").text(current236);
	$("#frequency236").text(frequency236);

	$("#load305").text(load305);
	$("#voltage305").text(voltage305);
	$("#current305").text(current305);
	$("#frequency305").text(frequency305);

	$("#load310").text(load310);
	$("#voltage310").text(voltage310);
	$("#current310").text(current310);
	$("#frequency310").text(frequency310);

	$("#load429").text(load429);
	$("#voltage429").text(voltage429);
	$("#current429").text(current429);
	$("#frequency429").text(frequency429);

	$("#loadRecti").text(rectiTotal.loads);
	$("#voltageRecti").text(rectiTotal.voltage);
	$("#currentRecti").text(rectiTotal.current);
	$("#frequencyRecti").text(rectiTotal.frequency);

	// console.log(forChart);
}

async function getDataUps() {
	let upsPanel = await $.ajax({
		url: baseUrl + "getdata/ups",
		dataType: "json",
	});

	let load202 = parseFloat(upsPanel.ups202.loads);
	let voltage202 = parseFloat(upsPanel.ups202.voltage);
	let current202 = parseFloat(upsPanel.ups202.current);
	let frequency202 = parseFloat(upsPanel.ups202.frequency);

	let load203 = parseFloat(upsPanel.ups203.loads);
	let voltage203 = parseFloat(upsPanel.ups203.voltage);
	let current203 = parseFloat(upsPanel.ups203.current);
	let frequency203 = parseFloat(upsPanel.ups203.frequency);

	let load301 = parseFloat(upsPanel.ups301.loads);
	let voltage301 = parseFloat(upsPanel.ups301.voltage);
	let current301 = parseFloat(upsPanel.ups301.current);
	let frequency301 = parseFloat(upsPanel.ups301.frequency);

	let load302 = parseFloat(upsPanel.ups302.loads);
	let voltage302 = parseFloat(upsPanel.ups302.voltage);
	let current302 = parseFloat(upsPanel.ups302.current);
	let frequency302 = parseFloat(upsPanel.ups302.frequency);

	let load501 = parseFloat(upsPanel.ups501.loads);
	let voltage501 = parseFloat(upsPanel.ups501.voltage);
	let current501 = parseFloat(upsPanel.ups501.current);
	let frequency501 = parseFloat(upsPanel.ups501.frequency);

	let load502 = parseFloat(upsPanel.ups502.loads);
	let voltage502 = parseFloat(upsPanel.ups502.voltage);
	let current502 = parseFloat(upsPanel.ups502.current);
	let frequency502 = parseFloat(upsPanel.ups502.frequency);

	let pUps = sum(load202, load203, load301, load302, load501, load502).toFixed(
		2
	);
	let vUps = avg(
		voltage202,
		voltage203,
		voltage301,
		voltage302,
		voltage501,
		voltage502
	).toFixed(2);
	let iUps = avg(
		current202,
		current203,
		current301,
		current302,
		current501,
		current502
	).toFixed(2);
	let fUps = avg(
		frequency202,
		frequency203,
		frequency301,
		frequency302,
		frequency501,
		frequency502
	).toFixed(2);

	let upsTotal = await $.ajax({
		url: baseUrl + "electric/ups",
		type: "post",
		data: {
			p: pUps,
			v: vUps,
			i: iUps,
			f: fUps,
		},
		dataType: "json",
	});

	$("#load202").text(load202);
	$("#voltage202").text(voltage202);
	$("#current202").text(current202);
	$("#frequency202").text(frequency202);

	$("#load203").text(load203);
	$("#voltage203").text(voltage203);
	$("#current203").text(current203);
	$("#frequency203").text(frequency203);

	$("#load301").text(load301);
	$("#voltage301").text(voltage301);
	$("#current301").text(current301);
	$("#frequency301").text(frequency301);

	$("#load302").text(load302);
	$("#voltage302").text(voltage302);
	$("#current302").text(current302);
	$("#frequency302").text(frequency302);

	$("#load501").text(load501);
	$("#voltage501").text(voltage501);
	$("#current501").text(current501);
	$("#frequency501").text(frequency501);

	$("#load502").text(load502);
	$("#voltage502").text(voltage502);
	$("#current502").text(current502);
	$("#frequency502").text(frequency502);

	$("#loadUps").text(upsTotal.loads);
	$("#voltageUps").text(upsTotal.voltage);
	$("#currentUps").text(upsTotal.current);
	$("#frequencyUps").text(upsTotal.frequency);
}

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

	// let updateDataRecti = {
	// 	label: labelRecti,
	// 	datasets: [
	// 		{
	// 			label: "Load",
	// 			backgroundColor: "rgba(245, 37, 37, 0.5)",
	// 			borderColor: "rgba(245, 37, 37, 1)",
	// 			data: dataRecti,
	// 			fill: "start",
	// 		},
	// 	],
	// };

	// let updateDataUps = {
	// 	label: labelUps,
	// 	datasets: [
	// 		{
	// 			label: "Load",
	// 			backgroundColor: "rgba(245, 37, 37, 0.5)",
	// 			borderColor: "rgba(245, 37, 37, 1)",
	// 			data: dataUps,
	// 			fill: "start",
	// 		},
	// 	],
	// };

	rectiChart.data.labels = labelRecti;
	rectiChart.data.datasets[0].data = dataRecti;
	rectiChart.update();

	upsChart.data.labels = labelUps;
	upsChart.data.datasets[0].data = dataUps;
	upsChart.update();

	// console.log(labelUps);
}
