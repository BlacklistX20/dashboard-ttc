let result;

async function getLvmdp() {
	const response = await fetch("http://192.168.10.13/data"); // IP ESP Panel LVMDP
	result = await response.json();
}

function setLvmdp() {
	getLvmdp().then(() => {
		$("#loadLvmdp").text(result.p);
		$("#voltageLvmdp").text(result.v);
		$("#currentLvmdp").text(result.i);
		$("#frequencyLvmdp").text(result.f);
	});
}

function saveLvmdp() {
	getLvmdp().then(() => {
		$.ajax({
			url: baseUrl + "electric/lvmdp",
			type: "post",
			data: {
				p: parseFloat(result.p),
				v: parseFloat(result.v),
				i: parseFloat(result.i),
				f: parseFloat(result.f),
			},
		});
	});
}

export { result, getLvmdp, setLvmdp, saveLvmdp };
