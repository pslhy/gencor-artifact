function sum_Of_Subarray_Prod(arr: number[]): number {
    const MOD = 10000000007;
    let n = arr.length;
    let prod = Array(n).fill(0);

    for (let i = 0; i < n; i++) {
        prod[i] = (arr[i] % MOD * (i + 1) % MOD * (n - i) % MOD) % MOD;
    }

    let prefix_sum = Array(n).fill(0);
    prefix_sum[0] = prod[0];
    for (let i = 1; i < n; i++) {
        prefix_sum[i] = (prefix_sum[i - 1] + prod[i]) % MOD;
    }

    let result = 0;
    for (let i = 0; i < n; i++) {
        result = (result + (arr[i] * (prefix_sum[i] + (i > 0 ? prefix_sum[i - 1] : 0))) % MOD) % MOD;
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
