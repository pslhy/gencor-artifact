function sum_Of_Subarray_Prod(arr: number[]): number { 
    let sum = 0; 
    let prod = 1; 
    let n = arr.length; 
  
    for (let i = 0; i < n; i++) { 
        let count = 0; 
        for (let j = i; j >= 0; j--) { 
            prod *= arr[j]; 
            count++; 
            sum += prod; 
        } 
        prod = 1; 
    } 
    return sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
