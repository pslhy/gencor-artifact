
function get_max_sum(n: number): number { // Function to get maximum sum
    let memo: number[] = new Array(n + 1).fill(-1); // Array to store the computed values
    function maxSum(i: number): number { // Helper function for recursion
        if (i == 0 || i == 1) return i; // Base cases
        if (memo[i] != -1) return memo[i]; // Check if value is already computed
        // Recursive relation
        let res = Math.max(i, maxSum(Math.floor(i / 2)) + maxSum(Math.floor(i / 3)) + maxSum(Math.floor(i / 4)) + maxSum(Math.floor(i / 5)));
        memo[i] = res; // Store the computed value
        return res;
    }
    return maxSum(n); // Call the helper function
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
