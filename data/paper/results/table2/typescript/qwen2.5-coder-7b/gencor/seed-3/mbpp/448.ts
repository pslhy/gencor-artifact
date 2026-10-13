
function cal_sum(n: number): number { 
    let P0: number = 3;
    let P1: number = 0;
    let P2: number = 2; 
    let sum: number = P0 + P1 + P2; 
  
    if (n == 0)  
        return P0; 
    if (n == 1)  
        return sum; 
    if (n == 2)  
        return sum; 
  
    let i: number;   
    for (i = 3; i <= n; i++) { 
        let temp: number = sum; 
        sum = P0 + P1 + P2; 
        P0 = P1; 
        P1 = P2; 
        P2 = temp; 
    } 
    return sum; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
