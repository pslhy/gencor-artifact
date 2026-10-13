function sum_Of_product(n: number): number {
    let res: number = 0;
    let m: number = 2 * (n + 1);
  
    for(let i = 1; i <= m / 2; i++) {
        res += factorial(m) / (factorial(i) * factorial(m - i));
    }
  
    return res;
}

function factorial(num: number): number {
    let fact: number = 1;
  
    for(let i = 1; i <= num; i++) {
        fact *= i;
    }
  
    return fact;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
