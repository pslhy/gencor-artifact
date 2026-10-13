
function sumofFactors(n: number): number { 
    let sum = 0; 
    for (let i = 2; i <= Math.sqrt(n); i++) { 
        // Check if i is a factor of n 
        if (n % i == 0) { 
            // If i is even, add it to the sum 
            if (i % 2 == 0) { 
                sum += i; 
            } 
            // If n/i is even and different from i, add it to the sum 
            if ((n / i) % 2 == 0 && (n / i) != i) { 
                sum += n / i; 
            } 
        } 
    } 
    // If n is even, add n/2 to the sum 
    if (n % 2 == 0) { 
        sum += n / 2; 
    } 
    return sum; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even factors of a number.
