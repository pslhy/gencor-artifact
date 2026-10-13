
function cal_sum(n: number): number { 
    let P0 = 3;
    let P1 = 0; 
    let P2 = 2; 

    // To store the sum of 
    // the array 
    let sum = P0 + P1 + P2;   

    for(let i = 3; i <= n; i++) { 
        let P3 = P0 + P1; 
        sum += P3; 
        P0 = P1; 
        P1 = P2; 
        P2 = P3; 
    }

    return sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
