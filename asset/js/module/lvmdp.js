let dataLvmdp;

async function getLvmdp() {
	try {
		const responseLvmdp = await fetch("http://192.168.10.13/data"); // IP ESP LVMDP
		const resultLvmdp = await responseLvmdp.json();

      dataLvmdp = {
			p: parseFloat(resultLvmdp.p).toFixed(2),
			v: parseFloat(resultLvmdp.v).toFixed(2),
			i: parseFloat(resultLvmdp.i).toFixed(2),
			f: parseFloat(resultLvmdp.f).toFixed(2)
		};
	} catch (error) {
		console.log(error);
	}
}

function setLvmdp() {
	getLvmdp().then(() => {

		$("#loadRecti").text(dataLvmdp.p);
		$("#voltageRecti").text(dataLvmdp.v);
		$("#currentRecti").text(dataLvmdp.i);
		$("#frequencyRecti").text(dataLvmdp.f);
	})
}

function saveLvmdp() {
	getLvmdp().then(() => {
		$.ajax({
			url: baseUrl + "electric/lvmdp",
			type: "post",
			data: {
				p: parseFloat(dataLvmdp.p),
				v: parseFloat(dataLvmdp.v),
				i: parseFloat(dataLvmdp.i),
				f: parseFloat(dataLvmdp.f),
			}
		})
	})
}

export { dataLvmdp, setLvmdp, saveLvmdp }