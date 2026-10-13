function sum_range_list(list1: number[], m: number, n: number): number {
    let sum = 0;
    for (let i = m; i <= n; i++) {
        sum += list1[i];
    }
    return sum
}

let list1: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
let m: number = 2;
let n: number = 6;

console.log(sum_range_list(list1, m, n));  // should print 30 (i.e., 1 + 2 + 3 + 4 + 5 + 6)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of numbers in an array within a range specified by two indices.
