function diff_even_odd(list1: number[]): number {
    let first_even_index = list1.findIndex((num) => num % 2 === 0);
    let first_odd_index = list1.findIndex((num) => num % 2 === 1);
    if (first_even_index === -1 || first_odd_index === -1) return -1;
    return list1[first_even_index] - list1[first_odd_index];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
