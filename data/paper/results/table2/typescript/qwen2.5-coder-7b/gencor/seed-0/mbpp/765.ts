
function is_polite(n: number): number { 
    return (n & (n + 1)); 
} 

function nthPoliteNumber(n: number): number { 
    let count = 0; 
    let i = 1; 
    while (true) { 
        if (!is_polite(i)) { 
            count++; 
            if (count == n) 
                return i; 
        } 
        i++; 
    } 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
