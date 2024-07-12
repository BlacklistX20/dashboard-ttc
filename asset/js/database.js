import { savePue } from "./module/pue.js";
import { saveIt } from "./module/it.js";
import { saveLvmdp } from "./module/lvmdp.js";
import { saveP205, saveP236, saveP305, saveP429, saveRecti } from "./module/recti.js";
import { saveUps202, saveUps203, saveUps301, saveUps302, saveUps501, saveUps502, saveUps } from "./module/ups.js";
import { saveBatt4, saveRecti4, saveBss, saveInter, saveTrans } from "./module/tempLt4.js";

async function updateDatabase() {
	await savePue();
   await saveIt();
	await saveLvmdp();	
	await saveP205();
	await saveP236();
	await saveP305();
	// await saveP310();
	await saveP429();
   await saveRecti();
	await saveUps202();
	await saveUps203();
	await saveUps301();
	await saveUps302();
	await saveUps501();
	await saveUps502();
   await saveUps();
	await saveBatt4();
	await saveRecti4();
	await saveBss();
	await saveInter();
	await saveTrans();
}
setInterval(updateDatabase, 300000);