function digit_distance_nums(n1: number, n2: number): number {
    const num1 = n1.toString().split('');
    const num2 = n2.toString().split('');
    let total = 0;
  
    for (let i = 0; i < num1.length; i++) {
        total += Math.abs(parseInt(num1[i]) - parseInt(num2[i]));
    }
  
    return total;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
