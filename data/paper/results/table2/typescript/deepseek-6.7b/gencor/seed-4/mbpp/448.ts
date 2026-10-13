
function cal_sum(n: number): number {
    let arr: number[] = [3, 0, 2];
    for (let i = 3; i <= n; i++) {
        arr[i] = arr[i-2] + arr[i-3];
    }
    return arr.slice(0, n+1).reduce((a: number, b: number) => a + b, 0);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
