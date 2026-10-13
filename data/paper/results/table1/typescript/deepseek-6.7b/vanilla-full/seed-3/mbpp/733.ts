function find_first_occurrence(A: number[], x: number): number {
    let left = 0;
    let right = A.length - 1;
    let result = -1;
    while (left <= right) {
        const mid = Math.floor((left + right) / 2);
        if (A[mid] === x) {
            result = mid;
            right = mid - 1;
        } else if (A[mid] < x) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the index of the first occurrence of a given number in a sorted array.
