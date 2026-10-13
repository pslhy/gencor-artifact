function sum_Of_Subarray_Prod(arr: number[]): number { 
    let n: number = arr.length; 
    let totalSum: number = 0; 

    for (let i = 0; i < n; i++) { 
        totalSum += arr[i]; 
        let currentProd: number = arr[i]; 
        for (let j = i + 1; j < n; j++) { 
            currentProd *= arr[j]; 
            totalSum += currentProd; 
        } 
    } 

    return totalSum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
