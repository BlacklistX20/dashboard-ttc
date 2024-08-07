$(document).ready(function () {
	$("a[id=fuel]").addClass("active");
	$("#date").text(namaHari + ", " + tgl);
}, startTime());

// Simulate Fuel Level (1-100)
// var levels = [25, 100, 50, 75, 10];

// $(document).ready(function () {
//   $("a[id=fuel]").addClass("active");
//   // Update Fuel Level Every Second
//   setInterval(function () {
//     for (var i = 0; i < levels.length; i++) {
//       // Update Fuel Level with Animation
//       $("#tank" + (i + 1) + "-level").animate(
//         { height: levels[i] + "%" },
//         1000
//       );
//     }
//   }, 1000);
// });

$(document).ready(getDataFuel(), setInterval(getDataFuel, 1000));

async function getDataFuel() {
	var fuel = await $.ajax({
		url: baseUrl + "getdata/tangki",
		dataType: "json",
	});
	// console.log(fuel);

	var tangki1 = fuel.t1;
	var tangki2 = fuel.t2;
	var max = $("#tank1Max").text();

	var percentaget1 = (tangki1 / max) * 100;
	var heightt1 = percentaget1.toFixed(1);
	var percentaget2 = (tangki2 / max) * 100;
	var heightt2 = percentaget2.toFixed(1);

	$("#tank1Value").text(tangki1);
	$("#tank1-level").animate({ height: heightt1 + "%" });
	$("#tank1-percent").text(percentaget1.toFixed(1) + "%");
	$("#tank2Value").text(tangki2);
	$("#tank2-level").animate({ height: heightt2 + "%" });
	$("#tank2-percent").text(percentaget2.toFixed(1) + "%");

	// console.log(tinggi);
}
