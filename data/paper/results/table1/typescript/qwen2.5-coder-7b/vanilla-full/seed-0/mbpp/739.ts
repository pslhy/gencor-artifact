function find_Index(n: number): number { 
    let k = n - 1; 
    let sum = 1; 
  
    for (let i = 2; ; i++) { 
        sum += i; 
        if (sum >= Math.pow(10, k) && sum < Math.pow(10, n)) { 
            return i; 
        } 
        if (sum >= Math.pow(10, n)) { 
            return -1; 
        } 
    } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
