function avg(...nums) {
	let sum = 0;
	nums.forEach((num) => {
		sum += num;
	});
	let avg = sum / nums.length;
	return avg;
}

function sum(...nums) {
	let sum = 0;
	nums.forEach((num) => {
		sum += num;
	});
	return sum;
}

export { avg, sum };