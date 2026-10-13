function is_Monotonic(A: number[]): boolean {
    let increase = true;
    let decrease = true;
    
    for(let i=0; i<A.length-1; i++){
        if(A[i] > A[i+1]) increase = false;
        if(A[i] < A[i+1]) decrease = false;
    }
    
    return increase || decrease;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array is monotonic or not.
