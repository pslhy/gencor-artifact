
function is_octagonal(n: number): number { 
    let i: number = 1;
    let num: number = 0;
    while (num < n) { 
        num = i * (3 * i - 2);
        i++;
    }
    return num === n ? i - 1 : -1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
