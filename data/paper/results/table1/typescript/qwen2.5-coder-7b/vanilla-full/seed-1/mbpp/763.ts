function find_min_diff(arr: number[], n: number): number { 
    if (n < 2) {
        throw new Error("Array should contain at least two elements");
    }
    
    arr.sort((a, b) => a - b); 
  
    let diff = Number.MAX_SAFE_INTEGER; 
  
    for (let i = 1; i < n; i++) { 
        diff = Math.min(diff, arr[i] - arr[i-1]); 
    } 
  
    return diff; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum difference between any two elements in a given array. https://www.geeksforgeeks.org/find-minimum-difference-pair/
