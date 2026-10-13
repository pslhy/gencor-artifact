function sum_to_n(n: number): number {
    let sum = 0;
    for (let i = 1; i <= n; i++) {
        sum += i;
    }
    return sum;
}

console.log(sum_to_n(30)); // Expected Output: 465
console.log(sum_to_n(100)); // Expected Output: 5050
console.log(sum_to_n(5)); // Expected Output: 15
console.log(sum_to_n(10)); // Expected Output: 55
console.log(sum_to_n(1)); // Expected Output: 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     sum_to_n is a function that sums numbers from 1 to n.
//     >>> sum_to_n(30)
//     465
//     >>> sum_to_n(100)
//     5050
//     >>> sum_to_n(5)
//     15
//     >>> sum_to_n(10)
//     55
//     >>> sum_to_n(1)
//     1
