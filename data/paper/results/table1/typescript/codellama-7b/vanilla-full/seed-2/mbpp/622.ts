function get_median(arr1: number[], arr2: number[], n: number): number {
    let i = 0, j = 0, k = 0;
    let result: number[] = [];

    while (i < arr1.length && j < arr2.length) {
        if (arr1[i] <= arr2[j]) {
            result[k++] = arr1[i++];
        } else {
            result[k++] = arr2[j++];
        }
    }

    while (i < arr1.length) {
        result[k++] = arr1[i++];
    }

    while (j < arr2.length) {
        result[k++] = arr2[j++];
    }

    if (k % 2 == 0) {
        return result[k / 2 - 1];
    } else {
        return (result[k / 2 - 1] + result[k / 2]) / 2;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
