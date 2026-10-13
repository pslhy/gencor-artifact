function diff_even_odd(list1: number[]): number {
    let even: number = 0;
    let odd: number = 0;
  
    for (const num of list1) {
        if (num % 2 === 0) {
            even += num;
        } else {
            odd += num;
        }
    }
  
    return Math.abs(even - odd);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
