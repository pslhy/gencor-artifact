function sumofFactors(n: number): number { 
    let result: number = 1; 
    for (let i = 2; i <= n; i++) {
        let sum = 1, term = 1; 
        if (n % i == 0) { 
            while (n % i == 0) { 
                n /= i; 
                term = term * i + 1; 
            } 
            sum = term - 1; 
            result *= sum; 
        } 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even factors of a number.
