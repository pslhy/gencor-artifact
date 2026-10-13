function even_binomial_Coeff_Sum(n: number): number {
    let sum = 0;
    let dp: number[][] = [];
    
    for(let i=0; i<=n; i++){
        dp[i] = new Array(i+1).fill(0);
        dp[i][0] = 1;
        
        for(let j=1; j<i; j++){
            dp[i][j] = (dp[i-1][j-1] + dp[i-1][j]) % 2;
            if(j % 2 === 0) 
                sum += dp[i][j];
        }
        dp[i][i] = 1;
        if(i % 2 === 0) 
            sum += dp[i][i];
    }
    
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
