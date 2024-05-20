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
	var sensorS1 = suhuLt4.batt4.s1;
	var sensorS2 = suhuLt4.batt4.s2;

	var sensorW3 = suhuLt4.recti4.w1;
	var sensorS3 = suhuLt4.recti4.s1;
	var sensorS4 = suhuLt4.recti4.s2;
	var sensorS5 = suhuLt4.recti4.s3;

	var sensorW6 = suhuLt4.bss.w1;
	var sensorS6 = suhuLt4.bss.s1;
	var sensorS7 = suhuLt4.bss.s2;
	var sensorS8 = suhuLt4.bss.s3;
	var sensorS9 = suhuLt4.bss.s4;

	var sensorW17 = suhuLt4.inter.w1;
	var sensorS17 = suhuLt4.inter.s1;
	var sensorS18 = suhuLt4.inter.s2;
	var sensorS19 = suhuLt4.inter.s3;
	var sensorS20 = suhuLt4.inter.s4;

	var sensorW10 = suhuLt4.trans.w1;
	var sensorS10 = suhuLt4.trans.s1;
	var sensorS11 = suhuLt4.trans.s2;
	var sensorS12 = suhuLt4.trans.s3;
	var sensorS13 = suhuLt4.trans.s4;
	var sensorS14 = suhuLt4.trans.s5;
	var sensorS15 = suhuLt4.trans.s6;

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

	$('#detailDateBatt4').text(sensorW1);
	$('#sensor1Batt4').text(sensorS1);
	$('#sensor2Batt4').text(sensorS2);

	$('#detailDateRecti4').text(sensorW3);
	$('#sensor1Recti4').text(sensorS3);
	$('#sensor2Recti4').text(sensorS4);
	$('#sensor3Recti4').text(sensorS5);
	
	$('#detailDateBss').text(sensorW6);
	$('#sensor1Bss').text(sensorS6);
	$('#sensor2Bss').text(sensorS7);
	$('#sensor3Bss').text(sensorS8);
	$('#sensor4Bss').text(sensorS9);

	$('#detailDateInter').text(sensorW17);
	$('#sensor1Inter').text(sensorS17);
	$('#sensor2Inter').text(sensorS18);
	$('#sensor3Inter').text(sensorS19);
	$('#sensor4Inter').text(sensorS20);

	$('#detailDateTrans').text(sensorW10);
	$('#sensor1Trans').text(sensorS10);
	$('#sensor2Trans').text(sensorS11);
	$('#sensor3Trans').text(sensorS12);
	$('#sensor4Trans').text(sensorS13);
	$('#sensor5Trans').text(sensorS14);
	$('#sensor6Trans').text(sensorS15);

	// console.log(suhuLt4);
}

// getDataSuhu();
