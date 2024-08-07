import { sum, avg } from "./calcFunc.js";

let dataIt;

async function getIt() {
		const response429 = await fetch("http://192.168.10.75/data"); // IP ESP Panel 4.29
		const p429 = await response429.json();

		const response305 = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.05
		const p305 = await response305.json();

      // const response310 = await fetch("http://192.168.10.52/data"); // IP ESP Panel 3.10
		// const p310 = await response310.json();
		const p310 = {p: 0, v: 0, i: 0, f: 0}

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
	
		let pRecti = sum(parseFloat(p429.p), parseFloat(p305.p305), parseFloat(p305.p310), parseFloat(p205.p), parseFloat(p236.p));
		let iRecti = sum(parseFloat(p429.i), parseFloat(p305.i305), parseFloat(p305.i310), parseFloat(p205.i), parseFloat(p236.i));
		let vRecti = avg(parseFloat(p429.v), parseFloat(p305.v305), parseFloat(p305.v310), parseFloat(p205.v), parseFloat(p236.v));
		let fRecti = avg(parseFloat(p429.f), parseFloat(p305.f305), parseFloat(p305.f310), parseFloat(p205.f), parseFloat(p236.f));

		let pUps = sum(
			parseFloat(pIo2.p242),
			parseFloat(pIo2.p243),
			parseFloat(pIo3.pA),
			parseFloat(pIo3.pB),
			parseFloat(pIo5.p501),
			parseFloat(pIo5.p502)
		);
		let iUps = sum(
			parseFloat(pIo2.i242),
			parseFloat(pIo2.i243),
			parseFloat(pIo3.iA),
			parseFloat(pIo3.iB),
			parseFloat(pIo5.i501),
			parseFloat(pIo5.i502)
		);
		let vUps = avg(
			parseFloat(pIo2.v242),
			parseFloat(pIo2.v243),
			parseFloat(pIo3.vA),
			parseFloat(pIo3.vB),
			parseFloat(pIo5.v501),
			parseFloat(pIo5.v502)
		);
		let fUps = avg(
			parseFloat(pIo2.f242),
			parseFloat(pIo2.f243),
			parseFloat(pIo3.fA),
			parseFloat(pIo3.fB),
			parseFloat(pIo5.f501),
			parseFloat(pIo5.f502)
		);

		let pIt = sum(pRecti, pUps).toFixed(2);
      let iIt = sum(iRecti, iUps).toFixed(2);
      let vIt = avg(vRecti, vUps).toFixed(2);
      let fIt = avg(fRecti, fUps).toFixed(2);

		dataIt = {
			p: pIt,
			v: vIt,
			i: iIt,
			f: fIt
		};
}

function setIt() {
   getIt().then(() => {
      
      $("#loadIt").text(dataIt.p);
		$("#voltageIt").text(dataIt.v);
		$("#currentIt").text(dataIt.i);
		$("#frequencyIt").text(dataIt.f);
   })
}

function saveIt() {
	getIt().then(() => {
		$.ajax({
			url: baseUrl + "electric/it",
			type: "post",
			data: {
				p: parseFloat(dataIt.p),
				v: parseFloat(dataIt.v),
				i: parseFloat(dataIt.i),
				f: parseFloat(dataIt.f),
			}
		})
	})
}

export { setIt, saveIt }