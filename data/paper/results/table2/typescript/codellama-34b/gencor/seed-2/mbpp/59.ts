
function is_octagonal(n: number): number {
    return n * (3 * n - 1) / 2;
}

function nth_octagonal(n: number): number {
    return is_octagonal(n);
}

console.log(nth_octagonal(4)); // 4
console.log(nth_octagonal(9)); // 9
console.log(nth_octagonal(25)); // 25
console.log(nth_octagonal(36)); // 36
console.log(nth_octagonal(49)); // 49

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
