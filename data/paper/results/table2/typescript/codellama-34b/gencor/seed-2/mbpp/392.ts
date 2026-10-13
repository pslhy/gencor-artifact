
function get_max_sum(n: number): number {
    let result = 0;
    for (let i = 1; i <= n; i++) {
        let currentMax = Math.floor(i / 2) + Math.floor(i / 3) + Math.floor(i / 4) + Math.floor(i / 5);
        if (currentMax > result) {
            result = currentMax;
        }
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
