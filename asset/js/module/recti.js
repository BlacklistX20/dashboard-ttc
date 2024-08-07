import { avg, sum } from "./calcFunc.js";

let dataRecti, result;

async function getRecti() {
	try {
		const response429 = await fetch("http://192.168.10.75/data"); // IP ESP Panel 4.29
		const result429 = await response429.json();

		const response305 = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.05
		const result305 = await response305.json();

		// const response310 = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.10
		// const result310 = await response310.json();
		const result310 = { f: 0, i: 0, p: 0, v: 0 };

		const response205 = await fetch("http://192.168.10.32/data"); // IP ESP Panel 2.05
		const result205 = await response205.json();

		const response236 = await fetch("http://192.168.10.33/data"); // IP ESP Panel 2.36
		const result236 = await response236.json();

		let pRecti = sum(
			parseFloat(result429.p),
			parseFloat(result305.p305),
			parseFloat(result305.p310),
			parseFloat(result205.p),
			parseFloat(result236.p)
		);
		let iRecti = sum(
			parseFloat(result429.i),
			parseFloat(result305.i305),
			parseFloat(result305.i310),
			parseFloat(result205.i),
			parseFloat(result236.i)
		);
		let vRecti = avg(
			parseFloat(result429.v),
			parseFloat(result305.v305),
			parseFloat(result305.v310),
			parseFloat(result205.v),
			parseFloat(result236.v)
		);
		let fRecti = avg(
			parseFloat(result429.f),
			parseFloat(result305.f305),
			parseFloat(result305.f310),
			parseFloat(result205.f),
			parseFloat(result236.f)
		);

		const total = {
			p: pRecti.toFixed(2),
			v: vRecti.toFixed(2),
			i: iRecti.toFixed(2),
			f: fRecti.toFixed(2),
		};

		dataRecti = {
			p429: result429,
			p305: result305,
			p205: result205,
			p236: result236,
			recti: total,
		};
	} catch (error) {
		console.error("Error:", error);
	}
}

async function setPanel205() {
	const response = await fetch("http://192.168.10.32/data"); // IP ESP Panel 2.05
	result = await response.json();

	$("#load205").text(result.p);
	$("#voltage205").text(result.v);
	$("#current205").text(result.i);
	$("#frequency205").text(result.f);
}

async function setPanel236() {
	const response = await fetch("http://192.168.10.33/data"); // IP ESP Panel 2.36
	const result = await response.json();

	$("#load236").text(result.p);
	$("#voltage236").text(result.v);
	$("#current236").text(result.i);
	$("#frequency236").text(result.f);
}

async function setPanel305() {
	const response = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.05
	const result = await response.json();

	$("#load305").text(result.p305);
	$("#voltage305").text(result.v305);
	$("#current305").text(result.i305);
	$("#frequency305").text(result.f305);
}

async function setPanel310() {
	const response = await fetch("http://192.168.10.52/data"); // sementara data dari esp panel 3.05
	const result = await response.json();

	$("#load310").text(result.p310);
	$("#voltage310").text(result.v310);
	$("#current310").text(result.i310);
	$("#frequency310").text(result.f310);
}

async function setPanel429() {
	const response = await fetch("http://192.168.10.75/data"); // IP ESP Panel 4.29
	const result = await response.json();

	$("#load429").text(result.p);
	$("#voltage429").text(result.v);
	$("#current429").text(result.i);
	$("#frequency429").text(result.f);
}

function setRecti() {
	getRecti().then(() => {
		let recti = dataRecti.recti;

		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		// console.log(dataRecti.recti);

		$("#loadRecti").text(recti.p);
		$("#voltageRecti").text(recti.v);
		$("#currentRecti").text(recti.i);
		$("#frequencyRecti").text(recti.f);
	});
}

function saveP205() {
	setPanel205().then(() => {
		$.ajax({
			url: baseUrl + "electric/p205",
			type: "post",
			data: {
				p: result.p,
				v: result.v,
				i: result.i,
				f: result.f,
			},
		});
	});
}

function saveP236() {
	setPanel236().then(() => {
		$.ajax({
			url: baseUrl + "electric/p236",
			type: "post",
			data: {
				p: result.p,
				v: result.v,
				i: result.i,
				f: result.f,
			},
		});
	});
}

function saveP305() {
	setPanel305().then(() => {
		$.ajax({
			url: baseUrl + "electric/p305",
			type: "post",
			data: {
				p: result.p305,
				v: result.v305,
				i: result.i305,
				f: result.f305,
			},
		});
	});
}

function saveP310() {
	setPanel310().then(() => {
		$.ajax({
			url: baseUrl + "electric/p310",
			type: "post",
			data: {
				p: result.p310,
				v: result.v310,
				i: result.i310,
				f: result.f310,
			},
		});
	});
}

function saveP429() {
	setPanel429().then(() => {
		$.ajax({
			url: baseUrl + "electric/p429",
			type: "post",
			data: {
				p: result.p,
				v: result.v,
				i: result.i,
				f: result.f,
			},
		});
	});
}

function saveRecti() {
	getRecti().then(() => {
		let recti = dataRecti.recti;

		getRecti().then(() => {
			$.ajax({
				url: baseUrl + "electric/recti",
				type: "post",
				data: {
					p: recti.p,
					v: recti.v,
					i: recti.i,
					f: recti.f,
				},
			});
		});
	});
}

export { setPanel205, setPanel236, setPanel305, setPanel310, setPanel429, setRecti, saveP205, saveP236, saveP305, saveP310, saveP429, saveRecti };
