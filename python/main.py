arraySize = 100000;
repeat = 100000;

testArray = [i for i in range(arraySize)]
sum = 0.0
i, j = 0, 0
while i < repeat:
	j = 0
	while j < arraySize:
		sum += testArray[(i+j)%arraySize];
		j += 1
	i += 1;
print(sum)