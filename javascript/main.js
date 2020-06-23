let arraySize = 100000;
let repeat = 100000;

let testArray = new Array(arraySize);
let sum = 0.0;
let i, j;
for (i = 0; i < arraySize; ++i) {
	testArray[i] = i;
}
for (i = 0; i < repeat; ++i) {
	for (j = 0; j < arraySize; ++j) {
		sum += testArray[(i+j)%arraySize];
	}
}
console.log(sum);