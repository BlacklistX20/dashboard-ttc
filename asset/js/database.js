import { saveIt } from "./module/it.js";
import { saveLvmdp } from "./module/lvmdp.js";
import { saveP205, saveP236, saveP305, saveP310, saveP429, saveRecti } from "./module/recti.js";
import { saveUps, saveUps202, saveUps203, saveUps301, saveUps302, saveUps501, saveUps502 } from "./module/ups.js";

async function updateDatabase() {
	await saveIt();
	// await saveLvmdp();	
	await saveP205();
	await saveP236();
	await saveP305();
	// saveP310();
	await saveP429();
   await saveRecti();
	await saveUps202();
	await saveUps203();
	await saveUps301();
	await saveUps302();
	await saveUps501();
	await saveUps502();
   await saveUps();
}
setInterval(updateDatabase, 300000);