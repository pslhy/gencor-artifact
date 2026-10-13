
function find_lucas(n: number): number {
    if (n === 0) return 2;
    if (n === 1) return 1;
    let prev = 2;
    let prevPrev = 1;
    for (let i = 2; i <= n; i++) {
        const temp = prev;
        prev = prev + prevPrev;
        prevPrev = temp;
    }
    return prev;
}

console.log(find_lucas(10));  // 89

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
