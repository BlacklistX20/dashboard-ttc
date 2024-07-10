import { sum } from "./calcFunc.js";

let pue;

async function getPue() {
	const responseLvmdp = await fetch("http://192.168.10.13/data"); // IP ESP Panel LVMDP
	const resultLvmdp = await responseLvmdp.json();

	const response429 = await fetch("http://192.168.10.75/data"); // IP ESP Panel 4.29
	const p429 = await response429.json();

	const response305 = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.05
	const p305 = await response305.json();

	// const response310 = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.10
	// const p310 = await response310.json();
	const p310 = { p: 0, v: 0, i: 0, f: 0 };

	const response205 = await fetch("http://192.168.10.32/data"); // IP ESP Panel 2.05
	const p205 = await response205.json();

	const response236 = await fetch("http://192.168.10.33/data"); // IP ESP Panel 2.36
	const p236 = await response236.json();

	const responseIo2 = await fetch("http://192.168.10.34/data"); // IP ESP Panel IO lt 2
	const pIo2 = await responseIo2.json();

	const responseIo3 = await fetch("http://192.168.10.53/data"); // IP ESP Panel IO lt 3
	const pIo3 = await responseIo3.json();
	// const pIo3 = {
	// 	pA: 0,
	// 	vA: 0,
	// 	iA: 0,
	// 	fA: 0,
	// 	pB: 0,
	// 	vB: 0,
	// 	iB: 0,
	// 	fB: 0,
	// };

	const responseIo5 = await fetch("http://192.168.10.92/data"); // IP ESP Panel IO lt 5
	const pIo5 = await responseIo5.json();

	let pRecti = sum(
		parseFloat(p429.p),
		parseFloat(p305.p),
		parseFloat(p310.p),
		parseFloat(p205.p),
		parseFloat(p236.p)
	);

	let pUps = sum(
		parseFloat(pIo2.p242),
		parseFloat(pIo2.p243),
		parseFloat(pIo3.pA),
		parseFloat(pIo3.pB),
		parseFloat(pIo5.p501),
		parseFloat(pIo5.p502)
	);

	let pIt = sum(pRecti, pUps).toFixed(2);

   let lvmdp = parseFloat(resultLvmdp.p);

	pue = (lvmdp / pIt).toFixed(2);
	// console.log(pue);
}

function setPue() {
   getPue().then(() => {
      $("#pueRT").text(pue);
   })
}

function savePue() {
   getPue().then(() => {
      $.ajax({
			url: baseUrl + "electric/pue",
			type: "post",
			data: {
				pue: pue
			},
		});
		console.log(pue);
   })
}

export { pue, getPue, setPue, savePue }
