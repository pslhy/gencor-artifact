
function get_max_sum(n: number): number {
    let dp = (n+1)*0.9;  // Initialize dp array to 90% to represent an upper limit for n upto 1e6. You can just ignore this if you don't have size limitations.
    return get_max_sum(n/2) + get_max_sum(n/3) + get_max_sum(n/4) + get_max_sum(n/5);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
