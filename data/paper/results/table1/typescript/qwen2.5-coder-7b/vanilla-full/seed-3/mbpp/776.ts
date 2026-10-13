function count_vowels(test_str: string): number { 
    let res = 0; 
    let vowels = "aeiouAEIOU"; 
    for (let idx = 0; idx < test_str.length - 1; idx++) { 
        if (vowels.includes(test_str[idx]) || vowels.includes(test_str[idx + 1])) { 
            res += 1; 
        } 
    } 
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
