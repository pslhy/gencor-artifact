
function is_nested(string: string): boolean { 
    let balanceCount = 0; 
    let hasNested = false; 
  
    for (let char of string) { 
        if (char === '[') { 
            balanceCount++; 
            if (balanceCount > 1) hasNested = true; 
        } else if (char === ']') { 
            balanceCount--; 
            if (balanceCount < 0) return false; 
        } 
    } 
  
    return balanceCount === 0 && hasNested; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that takes a string as input which contains only square brackets.
//     The function should return true if and only if there is a valid subsequence of brackets
//     where at least one bracket in the subsequence is nested.
//     >>> is_nested("[[]]")
//     true
//     >>> is_nested("[]]]]]]][[[[[]")
//     false
//     >>> is_nested("[][]")
//     false
//     >>> is_nested("[]")
//     false
//     >>> is_nested("[[][]]")
//     true
//     >>> is_nested("[[]][[")
//     true
