
function cal_sum(n: number): number { 
    let f1 = 3; 
    let f2 = 0; 
    let f3 = 2; 
    let sum = f1 + f2 + f3; 
    let fn = 0; 
    if (n <= 3) return f1 + f2 + f3; 
    for (let i = 4; i <= n; i++) { 
        fn = f1 + f2; 
        f1 = f2; 
        f2 = f3; 
        f3 = fn; 
        sum += fn; 
    } 
    return sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
