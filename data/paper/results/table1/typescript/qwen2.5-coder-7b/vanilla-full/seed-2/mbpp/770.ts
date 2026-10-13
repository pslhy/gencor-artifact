function odd_num_sum(n: number): number { 
    let sum = 0; 
    for (let i = 0; i < n; i++) { 
        let odd_number = 2 * i + 1; 
        sum += Math.pow(odd_number, 4); 
    } 
    return sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of fourth power of first n odd natural numbers.
