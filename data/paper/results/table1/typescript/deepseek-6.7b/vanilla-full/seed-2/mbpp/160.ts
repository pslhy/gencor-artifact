function find_solution(a: number, b: number, n: number): [number, number] | undefined {
    if (n < Math.min(a, b)) return undefined;
    for (let y = 0; y <= n / b; y++) {
        const x = (n - b * y) / a;
        if (x >= 0 && Number.isInteger(x)) return [x, y];
    }
    return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.
