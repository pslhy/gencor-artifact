function find_substring(str1: string[], sub_str: string): boolean { 
    let count = 0; 
    for (let x = 0; x < str1.length; x++) { 
        if (str1[x] == sub_str) 
            count++; 
    }  
    return count > 0 ? true : false; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if a string is present as a substring in a given array of string values.
