function odd_length_sum(arr: number[]): number { 
    let sum = 0; 
    let n = arr.length; 
    for (let i = 0; i < n; i++) { 
        // Calculate the number of subarrays the element at 
        // current index contributes 
        let count = Math.floor((i + 1) * (n - i) + 1) / 2; 
        // If count is odd then contribution is arr[i] * count 
        if (count % 2 != 0) sum += arr[i] * count; 
    } 
    return sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
