function find_solution(a: number, b: number, n: number): [number, number] | undefined { 
    for (let x = 0; x <= n; x++) { 
        let y = (n - a * x) / b; 
        if (y % 1 === 0) { 
            return [x, y as number]; 
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