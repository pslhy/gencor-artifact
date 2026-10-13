function find_solution(a: number, b: number, n: number): [number, number] | undefined {
    if (n === 0) {
        return [0, 0];
    }
    
    if (a === 0) {
        return b === 0 ? [1, 0] : undefined;
    }

    let x: number, y: number;
    for (let i = 0; i * a <= n; i++) {
        if ((n - i * a) % b === 0) {
            x = i;
            y = (n - i * a) / b;
            return [x, y];
        }
    }

    return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.
