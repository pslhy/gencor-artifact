function monotonic(l: number[]): boolean {
    return (l.every((v, i) => i === 0 || l[i-1] <= v) || l.every((v, i) => i === 0 || l[i-1] >= v));
}

console.log(monotonic([1, 2, 4, 20])); // true
console.log(monotonic([1, 20, 4, 10])); // false
console.log(monotonic([4, 1, 0, -10])); // true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return true is array elements are monotonically increasing or decreasing.
//     >>> monotonic([1, 2, 4, 20])
//     true
//     >>> monotonic([1, 20, 4, 10])
//     false
//     >>> monotonic([4, 1, 0, -10])
//     true
