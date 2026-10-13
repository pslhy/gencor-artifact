function find_solution(a: number, b: number, n: number): [number, number] | undefined {
    const gcd = a > 0 ? a : -a;
    const lcm = b > 0 ? b : -b;
    const x = Math.floor(n / gcd);
    const y = Math.floor(n / lcm);
    if (x >= 0 && y >= 0) {
        return [x, y];
    } else {
        return undefined;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.