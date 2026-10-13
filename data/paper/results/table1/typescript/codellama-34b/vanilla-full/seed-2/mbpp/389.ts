function find_lucas(n: number): number {
    let lucas = [2, 1];
    while (lucas.length <= n) {
        let next = lucas[lucas.length - 2] + lucas[lucas.length - 1];
        lucas.push(next);
    }
    return lucas[n];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
