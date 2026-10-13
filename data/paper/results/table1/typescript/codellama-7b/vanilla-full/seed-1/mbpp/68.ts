function is_Monotonic(A: number[]): boolean {
    let ascending = true;
    let descending = true;

    for (let i = 1; i < A.length; i++) {
        if (A[i] < A[i - 1]) {
            ascending = false;
        }
        if (A[i] > A[i - 1]) {
            descending = false;
        }
    }

    return ascending || descending;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array is monotonic or not.
