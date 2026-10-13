function first_repeated_char(str1: string): string | undefined { 
    const charCount = new Map<string, number>();
    for (let char of str1) { 
        if (charCount.has(char)) { 
            return char; 
        } else { 
            charCount.set(char, 1); 
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
