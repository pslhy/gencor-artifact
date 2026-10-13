
function sumofFactors(n: number): number { 
    let result = 1; 
    for (let i = 2; i <= Math.sqrt(n); i++) { 
        let count = 0; 
        let curr_sum = 1; 
        let curr_term = 1; 
        while (n % i == 0) { 
            count++; 
            n = Math.floor(n / i); 
            curr_term = i * curr_term; 
            curr_sum += curr_term; 
        } 
        result *= curr_sum; 
    } 
    if (n >= 2) { 
        result *= (1 + n); 
    } 
    return result - n; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even factors of a number.
