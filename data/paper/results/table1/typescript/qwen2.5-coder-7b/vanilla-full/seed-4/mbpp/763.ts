function find_min_diff(arr: number[], n: number): number { 
    // If array size is less than 2, return -1 as minimum difference is not possible 
    if (n < 2) { 
        return -1; 
    } 
  
    // Sort the array 
    arr.sort((a: number, b: number) => a - b); 
  
    // Initialize minimum difference as the difference between first two elements 
    let min_diff = arr[1] - arr[0]; 
  
    // Compute the difference between every two adjacent elements and update min_diff 
    for (let i = 1; i < n - 1; i++) { 
        let diff = arr[i+1] - arr[i]; 
        if (diff < min_diff) { 
            min_diff = diff; 
        } 
    } 
  
    // Return the result 
    return min_diff; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum difference between any two elements in a given array. https://www.geeksforgeeks.org/find-minimum-difference-pair/
