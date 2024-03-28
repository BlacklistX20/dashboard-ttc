$(document).ready(function () {
	$("a[id=fuel]").addClass("active");
});

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

  var tinggi = fuel.tinggi;
  var max = $("#tank1Max").text();

  var percentage = (tinggi / max) * 100;
  var tinggi = percentage.toFixed(1);

  $("#tank1Value").text(tinggi);
  $("#tank1-level").animate(
    { height: tinggi + "%"}
  )

  // console.log(tinggi);
};