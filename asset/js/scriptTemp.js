$(document).ready(function () {
  $("a[id=temp]").addClass("active");
  $("#flip-btn").click(function () {
    $("#front").toggle();
    $("#back").toggle();
    var buttonText = $("#flip-btn").text();
    if (buttonText === "Detail") {
      $("#flip-btn").text("Back");
    } else {
      $("#flip-btn").text("Detail");
    }
  });
});

$(document).ready(getDataSensor(), setInterval(getDataSensor, 1000));

function changeColor(a, b) {
  if (a > 18) {
    $("#" + b).removeClass("text-bg-danger");
    $("#" + b).addClass("text-bg-success");
  } else {
    $("#" + b).removeClass("text-bg-success");
    $("#" + b).addClass("text-bg-danger");
  }
}

async function getDataSensor() {
  var respondLt4 = await $.getJSON("config/getDataSuhu.php");

  var sensorS1 = respondLt4.batt4.s1;
  var sensorS2 = respondLt4.batt4.s2;

  var sensorS3 = respondLt4.recti4.s1;
  var sensorS4 = respondLt4.recti4.s2;
  var sensorS5 = respondLt4.recti4.s3;

  var sensorS6 = respondLt4.bss.s1;
  var sensorS7 = respondLt4.bss.s2;
  var sensorS8 = respondLt4.bss.s3;
  var sensorS9 = respondLt4.bss.s4;

  var sensorK1 = respondLt4.batt4.k1;
  var sensorK2 = respondLt4.batt4.k2;

  var sensorK3 = respondLt4.recti4.k1;
  var sensorK4 = respondLt4.recti4.k2;
  var sensorK5 = respondLt4.recti4.k3;

  var sensorK6 = respondLt4.bss.k1;
  var sensorK7 = respondLt4.bss.k2;
  var sensorK8 = respondLt4.bss.k3;
  var sensorK9 = respondLt4.bss.k4;

  var sensorW1 = respondLt4.batt4.w1;
  var sensorW2 = respondLt4.batt4.w2;

  var sensorW3 = respondLt4.recti4.w1;
  var sensorW4 = respondLt4.recti4.w2;
  var sensorW5 = respondLt4.recti4.w3;

  var sensorW6 = respondLt4.bss.w1;
  var sensorW7 = respondLt4.bss.w2;
  var sensorW8 = respondLt4.bss.w3;
  var sensorW9 = respondLt4.bss.w4;

  var sensorW10 = respondLt4.trans.w1;
  var sensorW11 = respondLt4.trans.w2;
  var sensorW12 = respondLt4.trans.w3;
  var sensorW13 = respondLt4.trans.w4;
  var sensorW14 = respondLt4.trans.w5;
  var sensorW15 = respondLt4.trans.w6;
  var sensorW16 = respondLt4.trans.w7;
  var sensorW17 = respondLt4.trans.w8;

  var suhuBatt4 = respondLt4.batt4T.st.toFixed(2);
  var kelemBatt4 = respondLt4.batt4T.kt.toFixed(2);
  var suhuRecti4 = respondLt4.recti4T.st.toFixed(2);
  var kelemRecti4 = respondLt4.recti4T.kt.toFixed(2);
  var suhuBSS = respondLt4.bssT.st.toFixed(2);
  var kelemBSS = respondLt4.bssT.kt.toFixed(2);
  var suhuTrans = respondLt4.transT.st.toFixed(2);
  var kelemTrans = respondLt4.transT.kt.toFixed(2);

  // console.log(respondLt4);

  changeColor(suhuBatt4, "cardBatt");
  changeColor(suhuRecti4, "cardRecti");
  changeColor(suhuBSS, "cardBss");
  // changeColor(sensorS2, "cardInter");
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
  // $("#suhuInter").text(sensorS2);
  // $("#kelemInter").text(sensorK2);
  // $("#dateInter").text(sensorW2);
  $("#suhuTrans").text(suhuTrans);
  $("#kelemTrans").text(kelemTrans);
  $("#dateTrans").text(sensorW10);

  // $("#suhu1").text(sensorS1);
  // $("#kelem1").text(sensorK1);
  // $("#suhu2").text(sensorS2);
  // $("#kelem2").text(sensorK2);
  // $("#suhu3").text(sensorS3);
  // $("#kelem3").text(sensorK3);
  // $("#suhu4").text(sensorS4);
  // $("#kelem4").text(sensorK4);
  // $("#suhu5").text(sensorS5);
  // $("#kelem5").text(sensorK5);
}

// getDataSensor();
