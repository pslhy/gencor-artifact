function check_expression(exp: string): boolean { 
    let stack: string[] = []; 
    
    for (let i = 0; i < exp.length; i++) { 
        let ch = exp[i]; 
        
        if (ch === '(' || ch === '[' || ch === '{') { 
            stack.push(ch); 
        } else { 
            if (stack.length === 0) return false; 
            
            let last = stack.pop()!; 
            
            if ((ch === ')' && last !== '(') || 
                (ch === ']' && last !== '[') || 
                (ch === '}' && last !== '{')) { 
                return false; 
            } 
        } 
    } 
    
    return stack.length === 0; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
