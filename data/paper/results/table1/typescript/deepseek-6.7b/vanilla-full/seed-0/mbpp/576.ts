function is_Sub_Array(A: number[], B: number[]): boolean {
    let i = 0;
    let j = 0;
    while (i < A.length && j < B.length) {
        if (A[i] == B[j]) {
            i++;
            j++;
        } else {
            i = i - j + 1;
            j = 0;
        }
    }
    if (j == B.length) {
        return true;
    }
    else {
        return false;
    }
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
