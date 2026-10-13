function is_Sub_Array(A: number[], B: number[]): boolean {
    let bool = false;
    for (let a of A){
       for (let b of B){
           if (b == a){
               bool = true;
           break;
           }
       }
    }
    return bool;
    }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
