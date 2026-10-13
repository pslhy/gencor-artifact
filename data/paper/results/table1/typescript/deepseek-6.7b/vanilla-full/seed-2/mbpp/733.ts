function find_first_occurrence(A: number[], x: number): number {
    let start = 0;
    let end = A.length - 1;
    let result = -1;
    
    while (start <= end) {
        let mid = Math.floor((start + end) / 2);
    
        if (A[mid] === x) {
            result = mid;
            end = mid - 1;
        } else if (A[mid] < x) {
            start = mid + 1;
        } else {
            end = mid - 1;
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
