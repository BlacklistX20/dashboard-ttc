import { setBatt4, setBss, setInter, setRecti4, setTrans } from "./module/tempLt4.js";

$(document).ready(
	function () {
		$("a[id=temp]").addClass("active");
		$("#date").text(namaHari + ", " + tgl);
	},
	startTime(),
);

function tempData() {
	setBatt4();
	setRecti4();
	setBss();
	setInter();
	setTrans();
}

tempData();
setInterval(tempData, 1000);
