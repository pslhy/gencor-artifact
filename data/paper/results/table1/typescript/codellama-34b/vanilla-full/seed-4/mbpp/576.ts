function is_Sub_Array(A: number[], B: number[]): boolean { 
    for(let i = 0; i < B.length; i++){
        let flag = false;
        for(let j = 0; j < A.length && j <B.length; j++){
            if(B[i] == A[j]){ 
                flag = true; 
                break ; 
            }
        }    
        if(!flag) 
            return false;
    }
    return true;
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
