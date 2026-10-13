function reverse_Array_Upto_K(input: number[], k: number): number[] {
    let reversed_input = input.slice();
    reversed_input.reverse();
    return input.slice(0, k).concat(reversed_input.slice(k));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
