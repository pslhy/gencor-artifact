function is_Sub_Array(A: number[], B: number[]): boolean {
    let M = A.length;
    let N = B.length;
  
    for (let i = 0; i <= N - M; i++) {
        let flag = 0;
  
        for (let j = 0; j < M; j++) {
            if (B[i + j] != A[j]) {
                flag = 1;
                break;
            }
        }
  
        if (flag == 0) {
            return true;
        }
    }
  
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
