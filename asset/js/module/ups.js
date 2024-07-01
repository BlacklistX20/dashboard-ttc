import { avg, sum } from "./calcFunc.js";

async function getDataUps() {
	let upsPanel = await $.ajax({
		url: baseUrl + "getdata/ups",
		dataType: "json",
	});

	let load202 = parseFloat(upsPanel.ups202.loads);
	let voltage202 = parseFloat(upsPanel.ups202.voltage);
	let current202 = parseFloat(upsPanel.ups202.current);
	let freq202 = parseFloat(upsPanel.ups202.frequency);

	let load203 = parseFloat(upsPanel.ups203.loads);
	let voltage203 = parseFloat(upsPanel.ups203.voltage);
	let current203 = parseFloat(upsPanel.ups203.current);
	let freq203 = parseFloat(upsPanel.ups203.frequency);

	let load301 = parseFloat(upsPanel.ups301.loads);
	let voltage301 = parseFloat(upsPanel.ups301.voltage);
	let current301 = parseFloat(upsPanel.ups301.current);
	let freq301 = parseFloat(upsPanel.ups301.frequency);

	let load302 = parseFloat(upsPanel.ups302.loads);
	let voltage302 = parseFloat(upsPanel.ups302.voltage);
	let current302 = parseFloat(upsPanel.ups302.current);
	let freq302 = parseFloat(upsPanel.ups302.frequency);

	let load501 = parseFloat(upsPanel.ups501.loads);
	let voltage501 = parseFloat(upsPanel.ups501.voltage);
	let current501 = parseFloat(upsPanel.ups501.current);
	let freq501 = parseFloat(upsPanel.ups501.frequency);

	let load502 = parseFloat(upsPanel.ups502.loads);
	let voltage502 = parseFloat(upsPanel.ups502.voltage);
	let current502 = parseFloat(upsPanel.ups502.current);
	let freq502 = parseFloat(upsPanel.ups502.frequency);

	let pUps = sum(load203, load301, load302, load501, load502).toFixed(2);
	let vUps = avg(
		voltage203,
		voltage301,
		voltage302,
		voltage501,
		voltage502
	).toFixed(2);
	let iUps = avg(
		current203,
		current301,
		current302,
		current501,
		current502
	).toFixed(2);
	let fUps = avg(freq203, freq301, freq302, freq501, freq502).toFixed(2);

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
	$("#frequency202").text(freq202);

	$("#load203").text(load203);
	$("#voltage203").text(voltage203);
	$("#current203").text(current203);
	$("#frequency203").text(freq203);

	$("#load301").text(load301);
	$("#voltage301").text(voltage301);
	$("#current301").text(current301);
	$("#frequency301").text(freq301);

	$("#load302").text(load302);
	$("#voltage302").text(voltage302);
	$("#current302").text(current302);
	$("#frequency302").text(freq302);

	$("#load501").text(load501);
	$("#voltage501").text(voltage501);
	$("#current501").text(current501);
	$("#frequency501").text(freq501);

	$("#load502").text(load502);
	$("#voltage502").text(voltage502);
	$("#current502").text(current502);
	$("#frequency502").text(freq502);

	$("#loadUps").text(upsTotal.loads);
	$("#voltageUps").text(upsTotal.voltage);
	$("#currentUps").text(upsTotal.current);
	$("#frequencyUps").text(upsTotal.frequency);
}

export { getDataUps };
