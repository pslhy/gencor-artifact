
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
            const gcd = find_solution(b, a % b, n % b);
            if (gcd === undefined) {
                return undefined;
            } else {
                return [gcd[0] + (n / b) * (a / b), gcd[1]];
            }
        }
    }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.
