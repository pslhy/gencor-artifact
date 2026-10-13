function find_kth(arr1: number[], arr2: number[], k: number): number {
    let left = 0, right = Math.min(arr1.length, arr2.length) - 1;
    while (left <= right) {
        const mid1 = left + (right - left) / 2;
        const mid2 = k - mid1;
        if (arr1[mid1] < arr2[mid2]) {
            left = mid1 + 1;
        } else if (arr1[mid1] > arr2[mid2]) {
            right = mid1 - 1;
        } else {
            return arr1[mid1];
        }
    }
    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
