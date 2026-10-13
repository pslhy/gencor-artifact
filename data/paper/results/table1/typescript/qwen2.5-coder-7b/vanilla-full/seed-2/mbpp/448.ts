function cal_sum(n: number): number { 
    let P0 = 3, P1 = 0, P2 = 2, Pn: number = 0; 
    let sum: number = P0 + P1 + P2; 
    for(let i: number = 3; i < n; i++) { 
        Pn = P0 + P1; 
        sum += Pn; 
        P0 = P1; 
        P1 = P2; 
        P2 = Pn; 
    } 
    return sum; 
} 

console.log(cal_sum(10));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
