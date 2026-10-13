function median_numbers(a: number, b: number, c: number): number {
    if (a <= b && b <= c || c <= b && b <= a) {
        return b;
    } else if (b <= a && a <= c || c <= a && a <= b) {
        return a;
    } else {
        return c;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of three numbers.
