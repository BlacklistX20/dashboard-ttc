import { avg, sum } from "./calcFunc.js";

let dataRecti;

async function getRecti() {
	try {
		const response429 = await fetch("http://192.168.10.75/data"); // IP ESP Panel 4.29
		const result429 = await response429.json();

		const response305 = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.05
		const result305 = await response305.json();

		// const response310 = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.10
		// const result310 = await response310.json();
		const result310 = {f: 0, i: 0, p: 0, v:0}

		const response205 = await fetch("http://192.168.10.32/data"); // IP ESP Panel 2.05
		const result205 = await response205.json();

		const response236 = await fetch("http://192.168.10.33/data"); // IP ESP Panel 2.36
		const result236 = await response236.json();

		let pRecti = sum(parseFloat(result429.p), parseFloat(result305.p), parseFloat(result310.p), parseFloat(result205.p), parseFloat(result236.p));
		let iRecti = sum(parseFloat(result429.i), parseFloat(result305.i), parseFloat(result310.i), parseFloat(result205.i), parseFloat(result236.i));
		let vRecti = avg(parseFloat(result429.v), parseFloat(result305.v), parseFloat(result310.v), parseFloat(result205.v), parseFloat(result236.v));
		let fRecti = avg(parseFloat(result429.f), parseFloat(result305.f), parseFloat(result310.f), parseFloat(result205.f), parseFloat(result236.f));

		const total = {
			p: pRecti.toFixed(2),
			v: vRecti.toFixed(2),
			i: iRecti.toFixed(2),
			f: fRecti.toFixed(2)
		}

		dataRecti = {
			p429: result429,
			p305: result305,
			p205: result205,
			p236: result236,
			recti: total
		};
	} catch (error) {
		console.error("Error:", error);
	}
}

function setRecti() {
	getRecti().then(() => {
		let p429 = dataRecti.p429;
		let p305 = dataRecti.p305;
		const p310 = {f: 0, i: 0, p: 0, v:0}
		let p205 = dataRecti.p205;
		let p236 = dataRecti.p236;
		let recti = dataRecti.recti;
	
		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		// console.log(dataRecti.recti);
	
		$("#load429").text(p429.p);
		$("#voltage429").text(p429.v);
		$("#current429").text(p429.i);
		$("#frequency429").text(p429.f);
	
		$("#load205").text(p205.p);
		$("#voltage205").text(p205.v);
		$("#current205").text(p205.i);
		$("#frequency205").text(p205.f);
	
		$("#load236").text(p236.p);
		$("#voltage236").text(p236.v);
		$("#current236").text(p236.i);
		$("#frequency236").text(p236.f);
	
		$("#load305").text(p305.p);
		$("#voltage305").text(p305.v);
		$("#current305").text(p305.i);
		$("#frequency305").text(p305.f);
	
		$("#load310").text(p310.p);
		$("#voltage310").text(p310.v);
		$("#current310").text(p310.i);
		$("#frequency310").text(p310.f);
	
		$("#loadRecti").text(recti.p);
		$("#voltageRecti").text(recti.v);
		$("#currentRecti").text(recti.i);
		$("#frequencyRecti").text(recti.f);
	});
}

function saveP205() {
	getRecti().then(() => {
		$.ajax({
			url: baseUrl + "electric/p205",
			type: "post",
			data: {
				p: parseFloat(dataRecti.p205.p),
				v: parseFloat(dataRecti.p205.v),
				i: parseFloat(dataRecti.p205.i),
				f: parseFloat(dataRecti.p205.f),
			}
		})
	})
}

function saveP236() {
	getRecti().then(() => {
		$.ajax({
			url: baseUrl + "electric/p236",
			type: "post",
			data: {
				p: parseFloat(dataRecti.p236.p),
				v: parseFloat(dataRecti.p236.v),
				i: parseFloat(dataRecti.p236.i),
				f: parseFloat(dataRecti.p236.f),
			}
		})
	})
}

function saveP305() {
	getRecti().then(() => {
		$.ajax({
			url: baseUrl + "electric/p305",
			type: "post",
			data: {
				p: parseFloat(dataRecti.p305.p),
				v: parseFloat(dataRecti.p305.v),
				i: parseFloat(dataRecti.p305.i),
				f: parseFloat(dataRecti.p305.f),
			}
		})
	})
}

function saveP310() {
	getRecti().then(() => {
		$.ajax({
			url: baseUrl + "electric/p310",
			type: "post",
			data: {
				p: parseFloat(dataRecti.p310.p),
				v: parseFloat(dataRecti.p310.v),
				i: parseFloat(dataRecti.p310.i),
				f: parseFloat(dataRecti.p310.f),
			}
		})
	})
}

function saveP429() {
	getRecti().then(() => {
		$.ajax({
			url: baseUrl + "electric/p429",
			type: "post",
			data: {
				p: parseFloat(dataRecti.p429.p),
				v: parseFloat(dataRecti.p429.v),
				i: parseFloat(dataRecti.p429.i),
				f: parseFloat(dataRecti.p429.f),
			}
		})
	})
}

function saveRecti() {
	getRecti().then(() => {
		let p429 = dataRecti.p429;
		let p305 = dataRecti.p305;
		const p310 = {f: 0, i: 0, p: 0, v:0}
		let p205 = dataRecti.p205;
		let p236 = dataRecti.p236;
	
		let pRecti = sum(parseFloat(p429.p), parseFloat(p305.p), parseFloat(p310.p), parseFloat(p205.p), parseFloat(p236.p));
		let iRecti = sum(parseFloat(p429.i), parseFloat(p305.i), parseFloat(p310.i), parseFloat(p205.i), parseFloat(p236.i));
		let vRecti = avg(parseFloat(p429.v), parseFloat(p305.v), parseFloat(p310.v), parseFloat(p205.v), parseFloat(p236.v));
		let fRecti = avg(parseFloat(p429.f), parseFloat(p305.f), parseFloat(p310.f), parseFloat(p205.f), parseFloat(p236.f));

		getRecti().then(() => {
			$.ajax({
				url: baseUrl + "electric/recti",
				type: "post",
				data: {
					p: pRecti.toFixed(2),
					v: vRecti.toFixed(2),
					i: iRecti.toFixed(2),
					f: fRecti.toFixed(2),
				}
			})
		})
	})
}

export { dataRecti, getRecti, setRecti, saveP205, saveP236, saveP305, saveP310, saveP429, saveRecti };
