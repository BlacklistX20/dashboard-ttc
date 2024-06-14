$(document).ready(
	function () {
		$("a[id=electric]").addClass("active");
		$("#date").text(namaHari + ", " + tgl);
	},
	getDataElectric(),
	setInterval(getDataElectric, 1000),
	startTime()
);

async function getDataElectric() {
	var electric = await $.ajax({
		url: baseUrl + "getdata/electric",
		dataType: "json",
	});

	let load205 = electric.p205.loads;
	let voltage205 = electric.p205.voltage;
	let current205 = electric.p205.current;
	let frequency205 = electric.p205.frequency;
	
	let load236 = electric.p236.loads;
	let voltage236 = electric.p236.voltage;
	let current236 = electric.p236.current;
	let frequency236 = electric.p236.frequency;

	let load305 = electric.p305.loads;
	let voltage305 = electric.p305.voltage;
	let current305 = electric.p305.current;
	let frequency305 = electric.p305.frequency;

	let load310 = electric.p310.loads;
	let voltage310 = electric.p310.voltage;
	let current310 = electric.p310.current;
	let frequency310 = electric.p310.frequency;

	let load429 = electric.p429.loads;
	let voltage429 = electric.p429.voltage;
	let current429 = electric.p429.current;
	let frequency429 = electric.p429.frequency;

	let load = electric.recti.loads;
	let voltage = electric.recti.voltage;
	let current = electric.recti.current;
	let frequency = electric.recti.frequency;

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

	$("#loadRecti").text(load);
	$("#voltageRecti").text(voltage);
	$("#currentRecti").text(current);
	$("#frequencyRecti").text(frequency);

	// console.log(load305);
}

const label = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Des']
const data = [601, 607, 621, 606, 617, 625, 612, 601, 607, 621, 606, 617, 625]

var lvmdpElectric = document.getElementById("lvmdpElectric");
var myLineChart = new Chart(lvmdpElectric, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				label: "LVMDP",
				backgroundColor: "rgba(245, 37, 37, 0.5)",
				borderColor: "rgba(245, 37, 37, 1)",
				data: data,
				fill: "start",
			},
		],
	},
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 550,
				max: 650,
			},
		},
	},
});

var rectiElectric = document.getElementById("rectiElectric");
var myLineChart = new Chart(rectiElectric, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				label: "Rectifier",
				backgroundColor: "rgba(245, 37, 37, 0.5)",
				borderColor: "rgba(245, 37, 37, 1)",
				data: data,
				fill: "start",
			},
		],
	},
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 550,
				max: 650,
			},
		},
	},
});

var upsElectric = document.getElementById("upsElectric");
var myLineChart = new Chart(upsElectric, {
	type: "line",
	data: {
		labels: label,
		datasets: [
			{
				label: "UPS",
				backgroundColor: "rgba(245, 37, 37, 0.5)",
				borderColor: "rgba(245, 37, 37, 1)",
				data: data,
				fill: "start",
			},
		],
	},
	options: {
		maintainAspectRatio: false,
		responsive: true,
		scales: {
			y: {
				min: 550,
				max: 650,
			},
		},
	},
});
