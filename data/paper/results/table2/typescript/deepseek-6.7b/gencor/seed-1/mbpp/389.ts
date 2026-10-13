
function find_lucas(n: number): number {
    if(n === 0) return 2;
    if(n === 1) return 1;

    let lucas_numbers = [2, 1];

    for(let i = 2; i <= n; i++) {
        lucas_numbers.push(lucas_numbers[i-1] + lucas_numbers[i-2]);
    }

    return lucas_numbers[n];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
