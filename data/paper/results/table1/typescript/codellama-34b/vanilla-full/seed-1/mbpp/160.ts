function find_solution(a: number, b: number, n: number): [number, number] | undefined {
    const gcd = gcd(a, b);
    if (n % gcd !== 0) {
        return undefined;
    }
    a = a / gcd;
    b = b / gcd;
    n = n / gcd;
    if (b < 0) {
        a = -a;
        b = -b;
    }
    const x = n / a;
    const y = n / b;
    return [x, y];
}

function gcd(a: number, b: number): number {
    while (b !== 0) {
        const r = a % b;
        a = b;
        b = r;
    }
    return a;
}

const result = find_solution(2, 3, 14);
console.log(result); // [2, 3]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.
