function cal_sum(n: number): number { 
    // Base cases 
    let a = 3; 
    let b = 0; 
    let c = 2; 
    let d = 0; 
  
    // Invalid Input 
    if (n < 0) 
        return -1; 
  
    // considering 0th Perrin number as 3 
    // and 1st, 2nd from the given series 
    if (n == 0)  
        return 3; 
  
    if (n == 1 || n == 2) 
        return 3; 
  
    // Calculate perrin numbers and their sum 
    for (let i = 3; i <= n; i++) { 
        d = a + b; 
        a = b; 
        b = c; 
        c = d; 
    } 
  
    // Returns sum of perrin numbers 
    return d; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.