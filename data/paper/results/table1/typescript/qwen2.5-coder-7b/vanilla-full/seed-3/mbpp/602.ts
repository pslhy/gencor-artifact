function first_repeated_char(str1: string): string | undefined {  
    let traversal_arr = str1.split('');  
    let dict = {};  
    for (let i of traversal_arr) {  
        if (dict[i] !== undefined)  
            return i;  
        else  
            dict[i] = 1;  
    }  
    return undefined; // No repeated character  
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first repeated character in a given string.
