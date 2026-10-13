function find_first_occurrence(A: number[], x: number): number {
    if (A.length === 0) {
        return -1;
    }
    let low = 0;
    let high = A.length - 1;
    while (low <= high) {
        const mid = (low + high) >> 1;
        if (A[mid] >= x) {
            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }
    if (low < A.length && A[low] === x) {
        return low;
    }
    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the index of the first occurrence of a given number in a sorted array.
