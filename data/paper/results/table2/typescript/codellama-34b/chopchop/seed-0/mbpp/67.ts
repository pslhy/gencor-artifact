
function bell_number(n: number): number {
    if (n === 1) {
        return 1;
    }
    return bell_number(n - 1) * (n + 1);
}

function partition(arr: number): number {
    let count = 0;
    for (let i = 0; i < arr; i++) {
        count += bell_number(arr - i);
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
