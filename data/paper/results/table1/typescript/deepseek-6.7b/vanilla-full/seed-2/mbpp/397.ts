function median_numbers(a: number, b: number, c: number): number {
    return a + b + c - Math.max(a, Math.max(b, c)) - Math.min(a, Math.min(b, c));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of three numbers.
