function is_Sub_Array(A: number[], B: number[]): boolean {
    let b_len = B.length;
    let a_len = A.length;
    let found = false;

    if(b_len > a_len)
        return false;

    for(let i = 0; i < a_len; i++){
        if(A[i] === B[0]){
            found = true;
            for(let j = 1; j < b_len; j++){
                if(A[i + j] !== B[j]){
                    found = false;
                    break;
                }
            }
            if(found)
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
