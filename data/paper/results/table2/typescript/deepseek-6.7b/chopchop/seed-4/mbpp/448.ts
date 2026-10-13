
function cal_sum(n: number): number {
    let arr: number = (n <= 0 ? 0 : (n <= 2 ? 1 : 2));
    let a = 3;
    let b = 0;
    let c = 2;
    for (let i = 0; i < n; i++) {
        arr = a + b;
        a = b;
        b = c;
        c = arr;
    }
    return arr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
