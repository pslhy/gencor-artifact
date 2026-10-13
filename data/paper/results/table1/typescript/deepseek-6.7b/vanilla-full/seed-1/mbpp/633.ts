function pair_xor_Sum(arr: number[], n: number): number {
    let res = 0;
    for (let i = 0; i < n; i++) {
        for (let j = i + 1; j < n; j++) {
            res += arr[i] ^ arr[j];
        }
    }
    return res;
}

let arr = [1, 2, 3];
let n = arr.length;
console.log(pair_xor_Sum(arr, n)); // 12


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of xor of all pairs of numbers in the given array.
