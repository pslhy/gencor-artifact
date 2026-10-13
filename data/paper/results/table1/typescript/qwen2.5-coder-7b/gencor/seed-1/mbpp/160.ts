
function find_solution(a: number, b: number, n: number): [number, number] | undefined { // Function that takes in three integers as arguments and returns either an array of two integers or undefined.

    if (n % a === 0 || n % b === 0) return [0, Math.floor(n / b)] // Checks if n is divisible by a or ny is divisible by b and if so returns either [0, Math.floor(n / b)] or [Math.floor(n / a), 0]

    let x = 0;
    let y = Math.floor(n / b);

    while (x <= n / a && y >= 0) { // Loop to check if there are any integers x and y that satisfy the equation

        if (a * x + b * y === n) return [x, y] // Returns the integers that satisfy the equation

        x++;
        y = Math.floor((n - a * x) / b) // Changes the values of x and y and checks if the equation is satisfied.

    }

    return undefined // Returns undefined if no solution is found

}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns integers x and y that satisfy ax + by = n as an array, or return undefined if no solution exists.
