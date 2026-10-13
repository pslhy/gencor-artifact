function get_max_sum(n: number): number { 
    let memo: number[] = new Array(n+1).fill(0); 
  
    function get_final_sum(n_: number): number { 
        if (n_ < 2) return n_; 
        if (memo[n_] != 0) return memo[n_]; 
  
        memo[n_] = Math.max(get_final_sum(Math.floor(n_/2)) + 
        get_final_sum(Math.floor(n_/3)) + 
        get_final_sum(Math.floor(n_/4)) + 
        get_final_sum(Math.floor(n_/5)), 
        n_); 
  
        return memo[n_]; 
    } 
  
    return get_final_sum(n); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).