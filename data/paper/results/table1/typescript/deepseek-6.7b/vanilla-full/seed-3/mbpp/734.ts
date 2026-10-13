function sum_Of_Subarray_Prod(arr: number[]): number {
    let n = arr.length;
    let left = new Array(n);
    let right = new Array(n);
  
    for (let i = 0; i < n; i++) {
        left[i] = i;
        right[i] = i;
    }
  
    let stack = [];
  
    for (let i = 0; i < n; i++) {
        while (stack.length > 0 && arr[stack[stack.length - 1]] >= arr[i]) {
            stack.pop();
        }
        if (stack.length > 0) {
            left[i] = stack[stack.length - 1] + 1;
        }
        stack.push(i);
    }
  
    stack = [];
  
    for (let i = n - 1; i >= 0; i--) {
        while (stack.length > 0 && arr[stack[stack.length - 1]] > arr[i]) {
            stack.pop();
        }
        if (stack.length > 0) {
            right[i] = stack[stack.length - 1] - 1;
        }
        stack.push(i);
    }
  
    let sum = 0;
    for (let i = 0; i < n; i++) {
        sum += arr[i] * (i - left[i]) * (right[i] - i + 1);
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
