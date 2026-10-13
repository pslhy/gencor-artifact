function sum_Of_Subarray_Prod(arr: number[]): number {
    let result = 0;
    for (let i = 0; i < arr.length; i++) {
        const prod = arr[i] * (arr.length - i);
        result += prod;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
