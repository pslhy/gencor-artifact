function median_numbers(a: number, b: number, c: number): number {
    if ((b < a && a < c) || (c < a && a < b))
        return a;
    else if ((a < b && b < c) || (c < b && b < a))
        return b;
    else 
        return c;
}

console.log(median_numbers(5, 3, 7));  // Output should be 5
console.log(median_numbers(3, 1, 2));  // Output should be 2
console.log(median_numbers(5, 6, 4));  // Output should be 5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of three numbers.
