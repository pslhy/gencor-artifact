function is_Monotonic(A: number[]): boolean {
    let status = true;
    let i = 0;
    let j = 0;
    if (A.length <= 1) {
        return true;
    }
    if (A[0] < A[1]) {
        j++;
    }
    if (A[0] > A[1]) {
        i++;
    }
    for (var index = 1; index < A.length; index++) {
        if (A[index] < A[0]) {
            j++;
        }
        if (A[index] > A[0]) {
            i++;
        }
    }
    if (j == A.length - 1 || i == A.length - 1) {
        status = false;
    }
    return status;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array is monotonic or not.
