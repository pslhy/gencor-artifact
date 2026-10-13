
function find_lucas(n: number): number {
    let prev = 2
    ;
    let curr = 1
    ;
    for (let i = 2; i <= n; i++) {
        let temp = curr
        ;
        curr = prev + curr
        ;
        prev = temp
        ;
    }

    return curr
    ;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
