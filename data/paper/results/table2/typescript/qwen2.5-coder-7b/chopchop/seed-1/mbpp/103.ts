
function eulerian_num(n: number, m: number): number { // Function to calculate Eulerian number
    if (m >= n || n === 0) { // If m is greater than or equal to n or n is 0, the Eulerian number is 0
        return 0;
    }
    if (m === 0) { // If m is 0, the Eulerian number is 1
        return 1;
    }
    return ((n - m) * eulerian_num(n - 1, m - 1) + (m + 1) * eulerian_num(n - 1, m)); // Recursive formula to calculate Eulerian number
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
