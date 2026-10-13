function is_sublist(l: number[], s: number[]): boolean {
    let s_index = 0;
    
    for (let i = 0; i < l.length; i++) {
        if (l[i] === s[s_index]) {
            s_index += 1;
            if (s_index === s.length) {
                return true;
            }
        } else {
            s_index = 0;
        }
    }
    
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.
