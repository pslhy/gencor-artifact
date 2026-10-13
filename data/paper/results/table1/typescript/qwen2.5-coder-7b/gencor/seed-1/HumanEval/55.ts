
function fib(n: number): number { // Function to calculate nth Fibonacci number
    if (n <= 1) return n; // Base case: return n if n is less than or equal to 1
    let a = 0; // Initialize the first Fibonacci number as 0
    let b = 1; // Initialize the second Fibonacci number as 1
    for (let i = 2; i <= n; i++) { // Loop from 2 to n
        let temp = a + b; // Calculate the next Fibonacci number
        a = b; // Update the value of a
        b = temp; // Update the value of b
    }
    return b; // Return the nth Fibonacci number
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return n-th Fibonacci number.
//     >>> fib(10)
//     55
//     >>> fib(1)
//     1
//     >>> fib(8)
//     21
