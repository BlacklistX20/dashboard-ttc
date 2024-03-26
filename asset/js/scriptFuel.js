// Simulate Fuel Level (1-100)
var levels = [25, 100, 50, 75, 10];

$(document).ready(function () {
  $("a[id=fuel]").addClass("active");
  // Update Fuel Level Every Second
  setInterval(function () {
    for (var i = 0; i < levels.length; i++) {
      // Update Fuel Level with Animation
      $("#tank" + (i + 1) + "-level").animate(
        { height: levels[i] + "%" },
        1000
      );
    }
  }, 1000);
});



// async function getDataFuel() {
//   var respondFuel = await $.getJSON("config/dataFuel.php");

//   var tangki1 = respondFuel.tangki1.tinggi;
//   console.log(tangki1);

//   $("#tank1Value").text(tangki1);
// };

// getDataFuel();