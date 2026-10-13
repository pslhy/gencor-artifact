function pair_xor_Sum(arr: number[], n: number): number { 
    let xorSum = 0; 
    for (let i = 0; i < n; i++) { 
        xorSum += arr[i]; 
    } 
    let res = 0; 
    for (let i = 0; i < n; i++) { 
        res += arr[i] * (xorSum - arr[i]); 
    } 
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of xor of all pairs of numbers in the given array.
