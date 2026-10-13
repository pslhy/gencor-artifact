function is_Sub_Array(A: number[], B: number[]): boolean {
    let isSubArray = false;

    if(A.length < B.length) return false;

    for (let i = 0; i <= A.length - B.length; i++){
        if(A[i] === B[i]) {
            isSubArray = true;
        } else {
            return false;
        }
    }

    return isSubArray;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
