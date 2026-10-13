function get_median(arr1: number[], arr2: number[], n: number): number {
    let left = 0;
    let right = n - 1;
    while (left <= right) {
        const val1 = arr1[left];
        const val2 = arr2[right];
        if (val1 <= val2) {
            left++;
        } else {
            right--;
        }
    }
    if (left === n) {
        return (arr1[n - 1] + arr2[n - 1]) / 2;
    } else {
        return (arr1[left] + arr2[right]) / 2;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
