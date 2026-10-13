function first_repeated_char(str1: string): string | undefined {  
    let traversal_arr = str1.split('');  
    let dict = new Map<string, boolean>();  
    for(let i=0; i < traversal_arr.length; i++) {  
        if(dict.has(traversal_arr[i])) {  
            return traversal_arr[i];  
        } else {  
            dict.set(traversal_arr[i], true);  
        }  
    }  
    return undefined;  
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first repeated character in a given string.