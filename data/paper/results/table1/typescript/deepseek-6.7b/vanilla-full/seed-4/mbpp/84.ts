function sequence(n: number): number {
    let arr: number[] = [0, 1, 1];
    for (let i = 3; i <= n; i++) {
        arr[i] = arr[arr[i - 1]] + arr[i - arr[i - 1] - 1];
    }
    return arr[n];
}
console.log(sequence(10)); // prints sequence for 10th term


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
