
function get_max_sum(n: number): number {
    if(n <= 1) {
        return n;
    }

    let max_sum = 0;
    
    for(let i=2; i<=5; i++) {
       max_sum = Math.max(max_sum, get_max_sum(Math.floor(n/ i)));
    }
    
    return max_sum + n;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
