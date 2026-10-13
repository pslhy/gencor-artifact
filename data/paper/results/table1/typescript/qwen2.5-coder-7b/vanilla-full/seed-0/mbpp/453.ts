function sumofFactors(n: number): number { 
    let result = 0; 
    for (let i = 1; i * i <= n; i++) { 
        if (n % i == 0) { 
            if (i % 2 == 0) 
                result += i; 
            if ((n / i != i) && (n / i) % 2 == 0) 
                result += (n / i); 
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
