function even_binomial_Coeff_Sum(n: number): number {
    let res: number = 0; 
    let fact: number[] = new Array(n+1).fill(1); 
  
    for (let i: number = 1; i <= n; i++) 
        fact[i] = fact[i-1] * i; 
  
    for (let i: number = 0; i <= n; i += 2) 
        if (i <= n - 2) 
            res += fact[n]/(fact[i]*fact[n-i]); 
        else
            res += fact[n]/(fact[n-2]*fact[2]); 
  
    return res;
}

console.log(even_binomial_Coeff_Sum(5)); // Output: 6
console.log(even_binomial_Coeff_Sum(7)); // Output: 96


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
