import { avg, sum } from "./calcFunc.js";

let dataUps, result;

async function getUps() {
	const responseIo2 = await fetch("http://192.168.10.34/data"); // IP ESP Panel IO lt 2
	const resultIo2 = await responseIo2.json();

	const responseIo3 = await fetch("http://192.168.10.53/data"); // IP ESP Panel IO lt 3
	const resultIo3 = await responseIo3.json();
	// const resultIo3 = {
	// 	pA: 0,
	// 	vA: 0,
	// 	iA: 0,
	// 	fA: 0,
	// 	pB: 0,
	// 	vB: 0,
	// 	iB: 0,
	// 	fB: 0,
	// };

	const responseIo5 = await fetch("http://192.168.10.92/data"); // IP ESP Panel IO lt 5
	const resultIo5 = await responseIo5.json();

	let pUps = sum(
		parseFloat(resultIo2.p242),
		parseFloat(resultIo2.p243),
		parseFloat(resultIo3.pA),
		parseFloat(resultIo3.pB),
		parseFloat(resultIo5.p501),
		parseFloat(resultIo5.p502)
	);
	let iUps = sum(
		parseFloat(resultIo2.i242),
		parseFloat(resultIo2.i243),
		parseFloat(resultIo3.iA),
		parseFloat(resultIo3.iB),
		parseFloat(resultIo5.i501),
		parseFloat(resultIo5.i502)
	);
	let vUps = avg(
		parseFloat(resultIo2.v242),
		parseFloat(resultIo2.v243),
		parseFloat(resultIo3.vA),
		parseFloat(resultIo3.vB),
		parseFloat(resultIo5.v501),
		parseFloat(resultIo5.v502)
	);
	let fUps = avg(
		parseFloat(resultIo2.f242),
		parseFloat(resultIo2.f243),
		parseFloat(resultIo3.fA),
		parseFloat(resultIo3.fB),
		parseFloat(resultIo5.f501),
		parseFloat(resultIo5.f502)
	);

	const total = {
		p: pUps.toFixed(2),
		v: vUps.toFixed(2),
		i: iUps.toFixed(2),
		f: fUps.toFixed(2),
	};

	dataUps = {
		pIo2: resultIo2,
		pIo3: resultIo3,
		pIo5: resultIo5,
		ups: total,
	};
}

async function getPanelIo2() {
	const response = await fetch("http://192.168.10.34/data"); // IP ESP Panel IO lt 2
	result = await response.json();
}

async function getPanelIo3() {
	const response = await fetch("http://192.168.10.53/data"); // IP ESP Panel IO lt 3
	result = await response.json();
// 	result = {
// 		pA: 0,
// 		vA: 0,
// 		iA: 0,
// 		fA: 0,
// 		pB: 0,
// 		vB: 0,
// 		iB: 0,
// 		fB: 0,
// 	};
}

async function getPanelIo5() {
	const response = await fetch("http://192.168.10.92/data"); // IP ESP Panel IO lt 5
	result = await response.json();
}

async function setPanelIo2() {
	getPanelIo2().then(() => {
		$("#load202").text(parseFloat(result.p242));
		$("#voltage202").text(parseFloat(result.v242));
		$("#current202").text(parseFloat(result.i242));
		$("#frequency202").text(parseFloat(result.f242));

		$("#load203").text(parseFloat(result.p243));
		$("#voltage203").text(parseFloat(result.v243));
		$("#current203").text(parseFloat(result.i243));
		$("#frequency203").text(parseFloat(result.f243));
	});
}

async function setPanelIo3() {
	getPanelIo3().then(() => {
		$("#load301").text(parseFloat(result.pA));
		$("#voltage301").text(parseFloat(result.vA));
		$("#current301").text(parseFloat(result.iA));
		$("#frequency301").text(parseFloat(result.fA));

		$("#load302").text(parseFloat(result.pB));
		$("#voltage302").text(parseFloat(result.vB));
		$("#current302").text(parseFloat(result.iB));
		$("#frequency302").text(parseFloat(result.fB));
	});
}

async function setPanelIo5() {
	getPanelIo5().then(() => {
		$("#load501").text(parseFloat(result.p501));
		$("#voltage501").text(parseFloat(result.v501));
		$("#current501").text(parseFloat(result.i501));
		$("#frequency501").text(parseFloat(result.f501));

		$("#load502").text(parseFloat(result.p502));
		$("#voltage502").text(parseFloat(result.v502));
		$("#current502").text(parseFloat(result.i502));
		$("#frequency502").text(parseFloat(result.f502));

		// console.log(result);
	});
}

async function setUps() {
	getUps().then(() => {
		let ups = dataUps.ups;

		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		// console.log(dataUps);

		$("#loadUps").text(ups.p);
		$("#voltageUps").text(ups.v);
		$("#currentUps").text(ups.i);
		$("#frequencyUps").text(ups.f);
	});
}

function saveUps202() {
	getPanelIo2().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups202",
			type: "post",
			data: {
				p: parseFloat(result.p242),
				v: parseFloat(result.v242),
				i: parseFloat(result.i242),
				f: parseFloat(result.f242),
			},
		});
	});
}

function saveUps203() {
	getPanelIo2().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups203",
			type: "post",
			data: {
				p: parseFloat(result.p243),
				v: parseFloat(result.v243),
				i: parseFloat(result.i243),
				f: parseFloat(result.f243),
			},
		});
	});
}

function saveUps301() {
	getPanelIo3().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups301",
			type: "post",
			data: {
				p: parseFloat(result.pA),
				v: parseFloat(result.vA),
				i: parseFloat(result.iA),
				f: parseFloat(result.fA),
			},
		});
	});
}

function saveUps302() {
	getPanelIo3().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups302",
			type: "post",
			data: {
				p: parseFloat(result.pB),
				v: parseFloat(result.vB),
				i: parseFloat(result.iB),
				f: parseFloat(result.fB),
			},
		});
	});
}

function saveUps501() {
	getPanelIo5().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups501",
			type: "post",
			data: {
				p: parseFloat(result.p501),
				v: parseFloat(result.v501),
				i: parseFloat(result.i501),
				f: parseFloat(result.f501),
			},
		});
	});
}

function saveUps502() {
	getPanelIo5().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups502",
			type: "post",
			data: {
				p: parseFloat(result.p502),
				v: parseFloat(result.v502),
				i: parseFloat(result.i502),
				f: parseFloat(result.f502),
			},
		});
	});
}

function saveUps() {
	getUps().then(() => {
		let ups = dataUps.ups;

		$.ajax({
			url: baseUrl + "electric/ups",
			type: "post",
			data: {
				p: ups.p,
				v: ups.v,
				i: ups.i,
				f: ups.f,
			},
		});
	});
}

export {
	setPanelIo2,
	setPanelIo3,
	setPanelIo5,
	setUps,
	saveUps202,
	saveUps203,
	saveUps301,
	saveUps302,
	saveUps501,
	saveUps502,
	saveUps
}
