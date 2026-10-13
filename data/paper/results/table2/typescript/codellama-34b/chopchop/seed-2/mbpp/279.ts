
function is_num_decagonal(n: number): number {
    let decagonals = 0;
    for (let i = 1; i <= n; i++) {
        decagonals += i;
    }
    return decagonals;
}

// Test the function
let result = is_num_decagonal(10);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth decagonal number.
