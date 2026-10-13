function sum_Of_Subarray_Prod(arr: number[]): number {
    let res = 0;
    let n = arr.length;
    for (let i = 0; i < n; i++) {
        res += ((i + 1) * (n - i) * arr[i]);
    }
    return res;
}

// Example usage
console.log(sum_Of_Subarray_Prod([1, 2, 3, 4]));  // output: 60


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
