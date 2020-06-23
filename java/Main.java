public class Main {
    public static void main(String[] args) {
        int arraySize = 100000;
        int repeat = 100000;
        double[] testArray = new double[arraySize];
        double sum = 0.0;
        int i, j;
        for (i = 0; i < arraySize; ++i) {
            testArray[i] = i;
        }
        for (i = 0; i < repeat; ++i) {
            for (j = 0; j < arraySize; ++j) {
                sum += testArray[(i+j)%arraySize];
            }
        }
        System.out.printf("%E\n", sum);
    }
}