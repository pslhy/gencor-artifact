function truncate_number(number: number): number {
    return number % 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive floating point number, it can be decomposed into
//     and integer part (largest integer smaller than given number) and decimals
//     (leftover part always smaller than 1).
//     Return the decimal part of the number.
//     >>> truncate_number(3.5)
//     0.5
