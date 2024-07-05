import { avg, sum } from "./calcFunc.js";

let dataUps;

async function getUps() {
	try {
		const responseIo2 = await fetch("http://192.168.10.34/data"); // IP ESP Panel IO lt 2
		const resultIo2 = await responseIo2.json();

		const responseIo3 = await fetch("http://192.168.10.53/data"); // IP ESP Panel IO lt 3
		const resultIo3 = await responseIo3.json();

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
			f: fUps.toFixed(2)
		}

		dataUps = {
			pIo2: resultIo2,
			pIo3: resultIo3,
			pIo5: resultIo5,
			ups: total
		};
	} catch (error) {
		console.error("Error:", error);
	}
}

async function setUps() {
	getUps().then(() => {
		let pIo2 = dataUps.pIo2;
		let pIo3 = dataUps.pIo3;
		let pIo5 = dataUps.pIo5;
		let ups = dataUps.ups;

		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		// console.log(pUps);

		$("#load202").text(parseFloat(pIo2.p242));
		$("#voltage202").text(parseFloat(pIo2.v242));
		$("#current202").text(parseFloat(pIo2.i242));
		$("#frequency202").text(parseFloat(pIo2.f242));

		$("#load203").text(parseFloat(pIo2.p243));
		$("#voltage203").text(parseFloat(pIo2.v243));
		$("#current203").text(parseFloat(pIo2.i243));
		$("#frequency203").text(parseFloat(pIo2.f243));

		$("#load301").text(parseFloat(pIo3.pA));
		$("#voltage301").text(parseFloat(pIo3.vA));
		$("#current301").text(parseFloat(pIo3.iA));
		$("#frequency301").text(parseFloat(pIo3.fA));

		$("#load302").text(parseFloat(pIo3.pB));
		$("#voltage302").text(parseFloat(pIo3.vB));
		$("#current302").text(parseFloat(pIo3.iB));
		$("#frequency302").text(parseFloat(pIo3.fB));

		$("#load501").text(parseFloat(pIo5.p501));
		$("#voltage501").text(parseFloat(pIo5.v501));
		$("#current501").text(parseFloat(pIo5.i501));
		$("#frequency501").text(parseFloat(pIo5.f501));

		$("#load502").text(parseFloat(pIo5.p502));
		$("#voltage502").text(parseFloat(pIo5.v502));
		$("#current502").text(parseFloat(pIo5.i502));
		$("#frequency502").text(parseFloat(pIo5.f502));

		$("#loadUps").text(ups.p);
		$("#voltageUps").text(ups.v);
		$("#currentUps").text(ups.i);
		$("#frequencyUps").text(ups.f);
	});
}

function saveUps202() {
	getUps().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups202",
			type: "post",
			data: {
				p: parseFloat(dataUps.pIo2.p242),
				v: parseFloat(dataUps.pIo2.v242),
				i: parseFloat(dataUps.pIo2.i242),
				f: parseFloat(dataUps.pIo2.f242),
			}
		})
	})
}

function saveUps203() {
	getUps().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups203",
			type: "post",
			data: {
				p: parseFloat(dataUps.pIo2.p243),
				v: parseFloat(dataUps.pIo2.v243),
				i: parseFloat(dataUps.pIo2.i243),
				f: parseFloat(dataUps.pIo2.f243),
			}
		})
	})
}

function saveUps301() {
	getUps().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups301",
			type: "post",
			data: {
				p: parseFloat(dataUps.pIo3.pA),
				v: parseFloat(dataUps.pIo3.vA),
				i: parseFloat(dataUps.pIo3.iA),
				f: parseFloat(dataUps.pIo3.fA),
			}
		})
	})
}

function saveUps302() {
	getUps().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups302",
			type: "post",
			data: {
				p: parseFloat(dataUps.pIo3.pB),
				v: parseFloat(dataUps.pIo3.vB),
				i: parseFloat(dataUps.pIo3.iB),
				f: parseFloat(dataUps.pIo3.fB),
			}
		})
	})
}

function saveUps501() {
	getUps().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups501",
			type: "post",
			data: {
				p: parseFloat(dataUps.pIo5.p501),
				v: parseFloat(dataUps.pIo5.v501),
				i: parseFloat(dataUps.pIo5.i501),
				f: parseFloat(dataUps.pIo5.f501),
			}
		})
	})
}

function saveUps502() {
	getUps().then(() => {
		$.ajax({
			url: baseUrl + "electric/ups502",
			type: "post",
			data: {
				p: parseFloat(dataUps.pIo5.p502),
				v: parseFloat(dataUps.pIo5.v502),
				i: parseFloat(dataUps.pIo5.i502),
				f: parseFloat(dataUps.pIo5.f502),
			}
		})
	})
}

function saveUps() {
	getUps().then(() => {
		let pIo2 = dataUps.pIo2;
		let pIo3 = dataUps.pIo3;
		let pIo5 = dataUps.pIo5;

		let pUps = sum(
			parseFloat(pIo2.p242),
			parseFloat(pIo2.p243),
			parseFloat(pIo3.pA),
			parseFloat(pIo3.pB),
			parseFloat(pIo5.p501),
			parseFloat(pIo5.p502)
		);
		let iUps = sum(
			parseFloat(pIo2.i242),
			parseFloat(pIo2.i243),
			parseFloat(pIo3.iA),
			parseFloat(pIo3.iB),
			parseFloat(pIo5.i501),
			parseFloat(pIo5.i502)
		);
		let vUps = avg(
			parseFloat(pIo2.v242),
			parseFloat(pIo2.v243),
			parseFloat(pIo3.vA),
			parseFloat(pIo3.vB),
			parseFloat(pIo5.v501),
			parseFloat(pIo5.v502)
		);
		let fUps = avg(
			parseFloat(pIo2.f242),
			parseFloat(pIo2.f243),
			parseFloat(pIo3.fA),
			parseFloat(pIo3.fB),
			parseFloat(pIo5.f501),
			parseFloat(pIo5.f502)
		);

		$.ajax({
			url: baseUrl + "electric/ups",
			type: "post",
			data: {
				p: pUps.toFixed(2),
				v: vUps.toFixed(2),
				i: iUps.toFixed(2),
				f: fUps.toFixed(2),
			}
		})
	})
}

export { dataUps, getUps, setUps, saveUps202, saveUps203, saveUps301, saveUps302, saveUps501, saveUps502, saveUps };
