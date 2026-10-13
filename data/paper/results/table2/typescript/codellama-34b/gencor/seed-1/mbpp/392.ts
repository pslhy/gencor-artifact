
function get_max_sum(n: number): number {
    let maxSum = n;
    let tempSum: number;

    while (n > 0) {
        tempSum = Math.max(tempSum, get_max_sum(Math.max(n / 2, n / 3, n / 4, n / 5)))
        n -= 5;
    }

    return Math.max(maxSum, tempSum);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
