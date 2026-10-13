function find_solution(a: number, b: number, n: number): [number, number] | undefined {
    if (a === 0) {
        if (b === 0) {
            return undefined;
        } else {
            return [0, n / b];
        }
    } else {
        if (b === 0) {
            return [n / a, 0];
        } else {
            const gcd = gcd(a, b);
            if (n % gcd !== 0) {
                return undefined;
            } else {
                const ax = n / gcd;
                const by = b / gcd;
                return [ax, by];
            }
        }
    }
}

function gcd(a: number, b: number): number {
    while (b !== 0) {
        const tmp = b;
        b = a % b;
        a = tmp;
    }
    return a;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.
