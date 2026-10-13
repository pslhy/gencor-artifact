function find_min_diff(arr: number[], n: number): number {
    // Sort the array in ascending order
    arr.sort((a, b) => a - b);

    // Initialize minDiff with a very large number
    let minDiff = Number.MAX_SAFE_INTEGER;

    // Traverse the array from the second element
    for (let i=0; i<n-1; i++) {
        // Calculate the difference between the current pair
        let diff = Math.abs(arr[i] - arr[i+1]);

        // If the calculated difference is less than minDiff, update minDiff
        if (diff < minDiff) {
            minDiff = diff;
        }
    }

    // Return the minimum difference
    return minDiff;
}

// Test
let arr = [1, 5, 3, 19, 18, 25];
let n = arr.length;
console.log(find_min_diff(arr, n));  // Output: 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum difference between any two elements in a given array. https://www.geeksforgeeks.org/find-minimum-difference-pair/
