
function get_max_sum(n: number): number {
    let memo: number = 0;
    const cache = (n) ==(memo) ? memo : (memo ==Math.max(n, Math.floor(n/2) + get_max_sum(Math.floor(n/2)) + Math.floor(n/3) + get_max_sum(Math.floor(n/3)) + Math.floor(n/4) + get_max_sum(Math.floor(n

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
