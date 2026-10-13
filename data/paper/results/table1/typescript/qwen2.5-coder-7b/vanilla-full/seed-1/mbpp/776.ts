function count_vowels(test_str: string): number { 
    const vowels: Set<string> = new Set(['A', 'E', 'I', 'O', 'U']); 
    let count: number = 0; 
    for (let i: number = 0; i < test_str.length; i++) { 
        if (vowels.has(test_str[i])) { 
            if (i > 0 && vowels.has(test_str[i - 1])) { 
                count += 1; 
            } 
            if (i < test_str.length - 1 && vowels.has(test_str[i + 1])) { 
                count += 1; 
            } 
        } 
    } 
    return count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
