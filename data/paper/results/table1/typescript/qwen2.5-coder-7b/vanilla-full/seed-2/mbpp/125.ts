function find_length(string: string): number { 
    let count = [0, 0]; 
    let res = 0; 

    for (let i = 0; i < string.length; i++) { 
        count[string[i] == '0' ? 0 : 1]++; 

        if (count[0] > count[1]) { 
            res = Math.max(res, count[0] - count[1]); 
        } 
    } 

    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
