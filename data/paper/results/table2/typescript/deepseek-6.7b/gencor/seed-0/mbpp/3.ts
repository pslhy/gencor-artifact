
function is_not_prime(n: number): boolean {
    if (n <= 1) return true;
    for(let i = 2; i < n; i++) {
        if (n % i === 0) return true;
    }
    return false;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to identify non-prime numbers.
