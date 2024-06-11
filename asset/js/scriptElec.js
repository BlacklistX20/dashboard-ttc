$(document).ready(
	function () {
		$("a[id=electric]").addClass("active");
		$("#date").text(namaHari + ", " + tgl);
	},
	getDataElectric(),
	setInterval(getDataElectric, 1000),
	startTime(),
);

async function getDataElectric() {
	var electric = await $.ajax({
		url: baseUrl + "getdata/electric",
		dataType: "json",
	});

	let load = electric.p429.loads;
	let voltage = electric.p429.voltage;
	let current = electric.p429.current;
	let frequency = electric.p429.frequency;

	$("#load429").text(load);
	$("#voltage429").text(voltage);
	$("#current429").text(current);
	$("#frequency429").text(frequency);

	// console.log(load);
};
