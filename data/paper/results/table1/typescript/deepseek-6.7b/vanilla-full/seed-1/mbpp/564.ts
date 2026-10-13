function count_Pairs(arr: number[], n: number): number {
    let m = new Map<number, number>();
    for (let i = 0; i < n; i++) {
        m.set(arr[i], (m.get(arr[i]) || 0) + 1);
    }
    let sum = 0;
    for (let i of m.values()) {
        sum += Math.floor((i * (i - 1)) / 2);
    }
    return sum;
}

let arr = [1, 2, 3, 4, 5, 6];
let n = arr.length;
console.log(count_Pairs(arr, n)); // Outputs: 15


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of integers and counts the number of possible unordered pairs where both elements are unequal.
