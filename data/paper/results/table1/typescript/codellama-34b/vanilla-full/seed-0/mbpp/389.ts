function find_lucas(n: number): number {
    if (n === 1) {
        return 2
    } else if (n === 2) {
        return 1
    }

    let current = 2
    let previous = 1

    for (let i = 3; i <= n; i++) {
        let next = current + previous
        previous = current
        current = next
    }

    return current
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
