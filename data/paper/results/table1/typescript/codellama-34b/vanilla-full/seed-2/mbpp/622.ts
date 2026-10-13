function get_median(arr1: number[], arr2: number[], n: number): number {
    let i = 0, j = 0, count = 0, median = 0;
    while (i < n && j < n) {
        if (arr1[i] <= arr2[j]) {
            count++;
            i++;
        } else {
            count++;
            j++;
        }
        if (count == (n + 1) / 2) {
            median = Math.max(arr1[i - 1], arr2[j - 1]);
            break;
        }
    }
    return median;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
