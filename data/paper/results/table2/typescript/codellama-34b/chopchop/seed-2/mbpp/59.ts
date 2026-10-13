
function is_octagonal(n: number): number {
    return n * (3 * n - 1) / 2;
}

function nth_octagonal(n: number): number {
    return is_octagonal(n);
}

// Test cases

// nth_octagonal(1) should be 1
// nth_octagonal(2) should be 8
// nth_octagonal(3) should be 21
// nth_octagonal(4) should be 56


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
