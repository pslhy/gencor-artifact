function cal_sum(n: number): number { 
    let P0: number = 3, P1: number = 0, P2: number = 2; 
    let Pn: number = P0 + P1;
    while(Pn < n) { 
        Pn = P0 + P1; 
        P0 = P1; 
        P1 = P2; 
        P2 = Pn; 
    }
    return Pn; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
