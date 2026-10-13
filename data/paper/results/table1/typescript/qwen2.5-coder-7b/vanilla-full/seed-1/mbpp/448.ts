function cal_sum(n: number): number { 
    if (n == 0) 
        return 3; 
    if (n == 1) 
        return 5; 
    if (n == 2) 
        return 8; 

    let p0: number = 3, p1: number = 5, p2: number = 8, sum: number = 16; 

    for (let i: number = 3; i < n; i++) { 
        let curr: number = p0 + p1; 
        sum += curr; 
        p0 = p1; 
        p1 = p2; 
        p2 = curr; 
    } 

    return sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
