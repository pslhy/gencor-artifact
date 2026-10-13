
function find_lucas(n: number): number { // Function to find nth Lucas number
    if (n === 0) return 2; // Base case for n=0
    if (n === 1) return 1; // Base case for n=1
    return find_lucas(n - 1) + find_lucas(n - 2); // Recursive call for other cases
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
