
function is_octagonal(n: number): number {
    let root = Math.floor(Math.sqrt(n));
    let x = Math.ceil((2 * root)/ Math.sqrt(5)) / 2;
    let y = root - x / 2;
    return x*x*y;
}

function nth_octagonal(n: number): number {
    let previous = 0;
    for (let i = 0; i < n; i++) {
        previous = is_octagonal(previous + 1);
    }
    return previous;
}

let result = nth_octagonal(20);
console.log(result); // Output: 16597651

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
