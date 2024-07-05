import { avg } from "./calcFunc.js";

function changeColor(a, b) {
	if (a > 18) {
		$("#" + b).removeClass("text-bg-danger");
		$("#" + b).addClass("text-bg-success");
	} else {
		$("#" + b).removeClass("text-bg-success");
		$("#" + b).addClass("text-bg-danger");
	}
}

async function getBatt4() {
	try {
		const response = await fetch("http://192.168.10.72/data"); // IP ESP Suhu Ruang Battery
		const result = await response.json();

		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		let s1 = parseFloat(result.s1);
		let k1 = parseFloat(result.k1);
		let s2 = parseFloat(result.s2);
		let k2 = parseFloat(result.k2);
		let temp = parseFloat(result.sAvg);
		let hum = parseFloat(result.kAvg);

		changeColor(temp, "cardBatt4");
		$("#tempBatt4").text(temp.toFixed(2));
		$("#humBatt4").text(hum.toFixed(2));
		$("#dateBatt4").text(date);

		$("#sensor1Batt4").text(s1.toFixed(2));
		$("#sensor2Batt4").text(s2.toFixed(2));

		let batt4 = [temp.toFixed(2), hum.toFixed(2)];
		return batt4;
	} catch (error) {
		console.error("Error:", error);
	}
}

async function getRecti4() {
	try {
		const response = await fetch("http://192.168.10.78/data"); // IP ESP Suhu Ruang Recti
		const result = await response.json();

		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		let s1 = parseFloat(result.s1);
		let k1 = parseFloat(result.k1);
		let s2 = parseFloat(result.s2);
		let k2 = parseFloat(result.k2);
		let s3 = parseFloat(result.s3);
		let k3 = parseFloat(result.k3);
		let temp = parseFloat(result.sAvg);
		let hum = parseFloat(result.kAvg);

		changeColor(temp, "cardRecti4");
		$("#tempRecti4").text(temp.toFixed(2));
		$("#humRecti4").text(hum.toFixed(2));
		$("#dateRecti4").text(date);

		$("#sensor1Recti4").text(s1.toFixed(2));
		$("#sensor2Recti4").text(s2.toFixed(2));
		$("#sensor3Recti4").text(s3.toFixed(2));
	} catch (error) {
		console.error("Error:", error);
	}
}

async function getBss() {
	try {
		const response = await fetch("http://192.168.10.73/data"); // IP ESP Suhu Ruang BSS
		const result = await response.json();

		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		let s1 = parseFloat(result.s1);
		let k1 = parseFloat(result.k1);
		let s2 = parseFloat(result.s2);
		let k2 = parseFloat(result.k2);
		let s3 = parseFloat(result.s3);
		let k3 = parseFloat(result.k3);
		let s4 = parseFloat(result.s4);
		let k4 = parseFloat(result.k4);
		let temp = parseFloat(result.sAvg);
		let hum = parseFloat(result.kAvg);

		changeColor(temp, "cardBss");
		$("#tempBss").text(temp.toFixed(2));
		$("#humBss").text(hum.toFixed(2));
		$("#dateBss").text(date);

		$("#sensor1Bss").text(s1.toFixed(2));
		$("#sensor2Bss").text(s2.toFixed(2));
		$("#sensor3Bss").text(s3.toFixed(2));
		$("#sensor4Bss").text(s4.toFixed(2));
	} catch (error) {
		console.error("Error:", error);
	}
}

async function getInter() {
	try {
		const response = await fetch("http://192.168.10.76/data"); // IP ESP Suhu Ruang Interkoneksi
		const result = await response.json();

		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		let s1 = parseFloat(result.s1);
		let k1 = parseFloat(result.k1);
		let s2 = parseFloat(result.s2);
		let k2 = parseFloat(result.k2);
		let s3 = parseFloat(result.s3);
		let k3 = parseFloat(result.k3);
		let s4 = parseFloat(result.s4);
		let k4 = parseFloat(result.k4);
		let temp = parseFloat(result.sAvg);
		let hum = parseFloat(result.kAvg);

		changeColor(temp, "cardInter");
		$("#tempInter").text(temp.toFixed(2));
		$("#humInter").text(hum.toFixed(2));
		$("#dateInter").text(date);

		$("#sensor1Inter").text(s1.toFixed(2));
		$("#sensor2Inter").text(s2.toFixed(2));
		$("#sensor3Inter").text(s3.toFixed(2));
		$("#sensor4Inter").text(s4.toFixed(2));
	} catch (error) {
		console.error("Error:", error);
	}
}

async function getTrans() {
	try {
		const response = await fetch("http://192.168.10.77/data"); // IP ESP Suhu Ruang Transmisi
		const result = await response.json();

		const date = hariIni.toLocaleString("id-ID", { dateStyle: "long" });
		let s1 = parseFloat(result.s1);
		let k1 = parseFloat(result.k1);
		let s2 = parseFloat(result.s2);
		let k2 = parseFloat(result.k2);
		let s3 = parseFloat(result.s3);
		let k3 = parseFloat(result.k3);
		let s4 = parseFloat(result.s4);
		let k4 = parseFloat(result.k4);
		let s5 = parseFloat(result.s5);
		let k5 = parseFloat(result.k5);
		let s6 = parseFloat(result.s6);
		let k6 = parseFloat(result.k6);
		let temp = parseFloat(result.sAvg);
		let hum = parseFloat(result.kAvg);

		changeColor(temp, "cardTrans");
		$("#tempTrans").text(temp.toFixed(2));
		$("#humTrans").text(hum.toFixed(2));
		$("#dateTrans").text(date);

		$("#sensor1Trans").text(s1.toFixed(2));
		$("#sensor2Trans").text(s2.toFixed(2));
		$("#sensor3Trans").text(s3.toFixed(2));
		$("#sensor4Trans").text(s4.toFixed(2));
		$("#sensor5Trans").text(s5.toFixed(2));
		$("#sensor6Trans").text(s6.toFixed(2));
	} catch (error) {
		console.error("Error:", error);
	}
}

export { getBatt4, getRecti4, getBss, getInter, getTrans };
