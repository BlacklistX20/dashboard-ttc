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

	const {updated_at, tank1, tank2} = fuel;

	var max = $("#tank1Max").text();

	var percentaget1 = (tank1 / max) * 100;
	var heightt1 = percentaget1.toFixed(1);
	var percentaget2 = (tank2 / max) * 100;
	var heightt2 = percentaget2.toFixed(1);

	$("#tank1Value").text(tank1);
	$("#tank1-level").animate({ height: heightt1 + "%" });
	$("#tank1-percent").text(percentaget1.toFixed(1) + "%");
	$("#tank2Value").text(tank2);
	$("#tank2-level").animate({ height: heightt2 + "%" });
	$("#tank2-percent").text(percentaget2.toFixed(1) + "%");
	$("#dateDailyTank").text(updated_at);

	// console.log(updated_at);
}
