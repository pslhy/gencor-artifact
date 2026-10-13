
function next_power_of_2(n: number): number { // Function to find the smallest power of 2 greater than or equal to n
    let power = 1; // Initialize power to 1
    while (power < n) { // While power is less than n
        power *= 2; // Double the power
    }
    return power; // Return the smallest power of 2 greater than or equal to n
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.
