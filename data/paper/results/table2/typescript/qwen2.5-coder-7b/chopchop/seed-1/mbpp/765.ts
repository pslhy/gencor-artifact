
function is_polite(n: number): number { 
    let power_of_two = 1; 
    while (power_of_two <= n) { 
        if (power_of_two == n) { 
            return 0; 
        } 
        power_of_two *= 2; 
    } 
    return 1; 
} 

function nthPoliteNumber(n: number): number { 
    let count = 0; 
    let i = 1; 
    while (count < n) { 
        if (is_polite(i) == 0) { 
            count++; 
        } 
        if (count == n) { 
            return i; 
        } 
        i++; 
    } 
    return -1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
