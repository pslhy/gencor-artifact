function get_median(arr1: number[], arr2: number[], n: number): number {
    if (n === 1) {
        return (arr1[0] + arr2[0]) / 2.0;
    } else if (n === 2) {
        return (arr1[0] + arr1[1] + arr2[0] + arr2[1]) / 4.0;
    } else if (n % 2 === 1) {
        return (arr1[n / 2] + arr2[n / 2]) / 2.0;
    } else {
        return (arr1[n / 2 - 1] + arr1[n / 2] + arr2[n / 2 - 1] + arr2[n / 2]) / 4.0;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
