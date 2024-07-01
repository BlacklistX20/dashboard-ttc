import { avg, sum } from "./calcFunc.js";

async function getDataRecti() {
	let rectiPanel = await $.ajax({
		url: baseUrl + "getdata/recti",
		dataType: "json",
	});

	let load205 = parseFloat(rectiPanel.p205.loads);
	let voltage205 = parseFloat(rectiPanel.p205.voltage);
	let current205 = parseFloat(rectiPanel.p205.current);
	let freq205 = parseFloat(rectiPanel.p205.frequency);

	let load236 = parseFloat(rectiPanel.p236.loads);
	let voltage236 = parseFloat(rectiPanel.p236.voltage);
	let current236 = parseFloat(rectiPanel.p236.current);
	let freq236 = parseFloat(rectiPanel.p236.frequency);

	let load305 = parseFloat(rectiPanel.p305.loads);
	let voltage305 = parseFloat(rectiPanel.p305.voltage);
	let current305 = parseFloat(rectiPanel.p305.current);
	let freq305 = parseFloat(rectiPanel.p305.frequency);

	let load310 = parseFloat(rectiPanel.p310.loads);
	let voltage310 = parseFloat(rectiPanel.p310.voltage);
	let current310 = parseFloat(rectiPanel.p310.current);
	let freq310 = parseFloat(rectiPanel.p310.frequency);

	let load429 = parseFloat(rectiPanel.p429.loads);
	let voltage429 = parseFloat(rectiPanel.p429.voltage);
	let current429 = parseFloat(rectiPanel.p429.current);
	let freq429 = parseFloat(rectiPanel.p429.frequency);

	let pRecti = sum(load205, load236, load305, load310, load429).toFixed(2);
	let vRecti = avg(voltage205, voltage236, voltage305, voltage310, voltage429).toFixed(2);
	let iRecti = sum(current205, current236, current305, current310, current429).toFixed(2);
	let fRecti = avg(freq205, freq236, freq305, freq310, freq429).toFixed(2);

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
	$("#frequency205").text(freq205);

	$("#load236").text(load236);
	$("#voltage236").text(voltage236);
	$("#current236").text(current236);
	$("#frequency236").text(freq236);

	$("#load305").text(load305);
	$("#voltage305").text(voltage305);
	$("#current305").text(current305);
	$("#frequency305").text(freq305);

	$("#load310").text(load310);
	$("#voltage310").text(voltage310);
	$("#current310").text(current310);
	$("#frequency310").text(freq310);

	$("#load429").text(load429);
	$("#voltage429").text(voltage429);
	$("#current429").text(current429);
	$("#frequency429").text(freq429);

	$("#loadRecti").text(rectiTotal.loads);
	$("#voltageRecti").text(rectiTotal.voltage);
	$("#currentRecti").text(rectiTotal.current);
	$("#frequencyRecti").text(rectiTotal.frequency);

	// console.log(forChart);
}

export { getDataRecti };
