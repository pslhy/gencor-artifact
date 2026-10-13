
function get_max_sum(n: number): number {
    let max_sum = 0;
    let sum = 0;
    while (n > 1) {
        sum = Math.max(sum, get_max_sum(n / 2) + get_max_sum(n / 3) + get_max_sum(n / 4) + get_max_sum(n / 5));
        if (sum > max_sum) {
            max_sum = sum;
        }
        n = Math.floor(n / 2);
    }
    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
