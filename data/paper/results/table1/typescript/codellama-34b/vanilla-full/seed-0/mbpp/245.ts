function max_sum(arr: number[]): number {
    const n = arr.length;
    if (n === 0) return 0;
  
    let inc = 0, dec = 0;
    let res = 0;
    for (let i = 0; i < n; i++) {
        if (arr[i] >= arr[inc]) {
            inc = i;
        }
        if (arr[n - i - 1] >= arr[dec]) {
            dec = n - i - 1;
        }
        if (inc > dec) {
            res += arr[dec];
            dec = inc;
            inc = i;
        } else {
            res += arr[inc];
            inc = i;
        }
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
