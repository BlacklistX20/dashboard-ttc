$(document).ready(
	function () {
		$("a[id=temp]").addClass("active");
		$("#date").text(namaHari + ", " + tgl);
	},
	getDataSuhu(),
	setInterval(getDataSuhu, 1000),
	startTime()
);

console.log(namaHari + ", " + tgl);

function changeColor(a, b) {
	if (a > 18) {
		$("#" + b).removeClass("text-bg-danger");
		$("#" + b).addClass("text-bg-success");
	} else {
		$("#" + b).removeClass("text-bg-success");
		$("#" + b).addClass("text-bg-danger");
	}
}

async function getDataSuhu() {
	var suhuLt4 = await $.ajax({
		url: baseUrl + "getdata/lt4",
		dataType: "json",
	});

	var sensorW1 = suhuLt4.batt4.w1;
	var sensorW2 = suhuLt4.batt4.w2;

	var sensorW3 = suhuLt4.recti4.w1;
	var sensorW4 = suhuLt4.recti4.w2;
	var sensorW5 = suhuLt4.recti4.w3;

	var sensorW6 = suhuLt4.bss.w1;
	var sensorW7 = suhuLt4.bss.w2;
	var sensorW8 = suhuLt4.bss.w3;
	var sensorW9 = suhuLt4.bss.w4;

	var sensorW17 = suhuLt4.inter.w1;
	var sensorW18 = suhuLt4.inter.w2;
	var sensorW19 = suhuLt4.inter.w3;
	var sensorW20 = suhuLt4.inter.w4;

	var sensorW10 = suhuLt4.trans.w1;
	var sensorW11 = suhuLt4.trans.w2;
	var sensorW12 = suhuLt4.trans.w3;
	var sensorW13 = suhuLt4.trans.w4;
	var sensorW14 = suhuLt4.trans.w5;
	var sensorW15 = suhuLt4.trans.w6;
	var sensorW16 = suhuLt4.trans.w7;

	var suhuBatt4 = suhuLt4.batt4T.st.toFixed(2);
	var kelemBatt4 = suhuLt4.batt4T.kt.toFixed(2);
	var suhuRecti4 = suhuLt4.recti4T.st.toFixed(2);
	var kelemRecti4 = suhuLt4.recti4T.kt.toFixed(2);
	var suhuBSS = suhuLt4.bssT.st.toFixed(2);
	var kelemBSS = suhuLt4.bssT.kt.toFixed(2);
	var suhuInter = suhuLt4.interT.st.toFixed(2);
	var kelemInter = suhuLt4.interT.kt.toFixed(2);
	var suhuTrans = suhuLt4.transT.st.toFixed(2);
	var kelemTrans = suhuLt4.transT.kt.toFixed(2);

	changeColor(suhuBatt4, "cardBatt");
	changeColor(suhuRecti4, "cardRecti");
	changeColor(suhuBSS, "cardBss");
	changeColor(suhuInter, "cardInter");
	changeColor(suhuTrans, "cardTrans");

	$("#suhuBatt4").text(suhuBatt4);
	$("#kelemBatt4").text(kelemBatt4);
	$("#dateBatt4").text(sensorW1);
	$("#suhuRecti4").text(suhuRecti4);
	$("#kelemRecti4").text(kelemRecti4);
	$("#dateRecti4").text(sensorW3);
	$("#suhuBss").text(suhuBSS);
	$("#kelemBss").text(kelemBSS);
	$("#dateBss").text(sensorW6);
	$("#suhuInter").text(suhuInter);
	$("#kelemInter").text(kelemInter);
	$("#dateInter").text(sensorW17);
	$("#suhuTrans").text(suhuTrans);
	$("#kelemTrans").text(kelemTrans);
	$("#dateTrans").text(sensorW10);

	// console.log(suhuLt4);
}

// getDataSuhu();
