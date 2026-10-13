function find_length(string: string): number { 
    let ans = 0; 
    let length = string.length; 

    for (let i = 0; i < length; i++) { 
        let counter = 0;
        for (let j = i; j < length; j++) { 
            if (string[j] === '0') 
                counter++; 
            else
                counter--; 

            if (counter > ans) 
                ans = counter; 
        } 
    }   
    return ans; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
