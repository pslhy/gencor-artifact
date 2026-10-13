function count_vowels(test_str: string): number { 
    let count = 0;
    let prev_char = test_str[0];
    
    for (let i = 1; i < test_str.length; i++) { 
        let current_char = test_str[i]; 
        if ((prev_char === 'a' || prev_char === 'e' || prev_char === 'i' || prev_char === 'o' || prev_char === 'u') || 
            (current_char === 'a' || current_char === 'e' || current_char === 'i' || current_char === 'o' || current_char === 'u')) { 
            count += 1; 
        } 
        prev_char = current_char; 
    } 
    return count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
