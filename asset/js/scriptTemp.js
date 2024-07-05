import { getBatt4, getBss, getInter, getRecti4, getTrans } from "./module/getDataTemp.js";

$(document).ready(
	function () {
		$("a[id=temp]").addClass("active");
		$("#date").text(namaHari + ", " + tgl);
	},
	startTime(),
);

function tempData() {
	getBatt4();
	getRecti4();
	getBss();
	getInter();
	getTrans();
}

tempData();
setInterval(tempData, 1000);
