
function cal_sum(n: number): number {
    let perrin: number = 0;
    let sum: number = 0;
    let a: number = 3;
    let b: number = 0;
    let c: number = 2;
    if (n <= 0) return 0;
    if (n == 1) return a;
    if (n == 2) return b;
    if (n == 3) return c;
    for (let i = 4; i <= n; i++) {
        perrin = a + b;
        a = b;
        b = c;
        c = perrin;
        sum += perrin;
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
