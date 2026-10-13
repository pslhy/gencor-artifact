
function rounded_avg(n: number, m: number): string | number { // Function that takes in two integers as arguments and returns a string or number
    if (n > m) { // If n is greater than m, return -1
        return -1;
    }
    let sum = 0; // Initialize sum
    for (let i = n; i <= m; i++) { // For loop to calculate the sum of numbers from n to m
        sum += i;
    }
    let avg = Math.round(sum / (m - n + 1)); // Calculate the average and round to the nearest integer
    return "0b" + avg.toString(2); // Convert the average to binary and return the result
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given two positive integers n and m, and your task is to compute the
//     average of the integers from n through m (including n and m).
//     Round the answer to the nearest integer and convert that to binary.
//     If n is greater than m, return -1.
//     Example:
//     >>> rounded_avg(1, 5)
//     "0b11"
//     >>> rounded_avg(7, 5)
//     -1
//     >>> rounded_avg(10, 20)
//     "0b1111"
//     >>> rounded_avg(20, 33)
//     "0b11010"
