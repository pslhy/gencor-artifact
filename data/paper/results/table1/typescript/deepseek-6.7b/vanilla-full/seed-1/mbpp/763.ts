function find_min_diff(arr: number[], n: number): number {
    // Sort the array in ascending order.
    arr.sort((a, b) => a - b);
  
    // Initialize difference as a large value.
    let diff = Number.MAX_SAFE_INTEGER;
  
    // Find the min diff by comparing adjacent elements.
    for (let i = 0; i < n - 1; i++) {
        let temp_diff = arr[i + 1] - arr[i];
        if (temp_diff < diff) {
            diff = temp_diff;
        }
    }
  
    // Return the minimum difference.
    return diff;
}

// Test the function
let arr = [1, 5, 3, 19, 18, 25];
console.log(find_min_diff(arr, arr.length)); // Expected output: 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum difference between any two elements in a given array. https://www.geeksforgeeks.org/find-minimum-difference-pair/
