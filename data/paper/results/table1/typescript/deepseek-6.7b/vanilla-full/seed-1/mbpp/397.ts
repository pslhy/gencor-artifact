function median_numbers(a: number, b: number, c: number): number {
    let min: number = Math.min(a, b, c);
    let max: number = Math.max(a, b, c);
    return a + b + c - min - max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of three numbers.
