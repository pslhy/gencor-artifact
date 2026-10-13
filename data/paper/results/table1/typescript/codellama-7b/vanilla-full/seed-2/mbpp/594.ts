function diff_even_odd(list1: number[]): number {
    let i = 0;
    while (i < list1.length && list1[i] % 2 === 0) {
      i++;
    }
    return list1[i] - list1[i - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
