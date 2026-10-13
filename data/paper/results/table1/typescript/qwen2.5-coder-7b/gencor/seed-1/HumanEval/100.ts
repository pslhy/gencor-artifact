
function make_a_pile(n: number): number[] { // Function that takes in a positive integer n and returns an array
    let pile: number[] = []; // Initialize an empty pile array
    let currentStones: number = n; // Initialize the number of stones in the current level to n

    for (let i = 0; i < n; i++) { // Loop through each level
        pile.push(currentStones); // Add the number of stones in the current level to the pile array
        if (n % 2 === 0) { // If n is even
            currentStones += 2; // Increase the number of stones in the next level by 2 (the next even number)
        } else { // If n is odd
            currentStones += 2; // Increase the number of stones in the next level by 2 (the next odd number)
        }
    }

    return pile; // Return the pile array
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, you have to make a pile of n levels of stones.
//     The first level has n stones.
//     The number of stones in the next level is:
//     - the next odd number if n is odd.
//     - the next even number if n is even.
//     Return the number of stones in each level in an array, where element at index
//     i represents the number of stones in the level (i+1).
//     Examples:
//     >>> make_a_pile(3)
//     [3, 5, 7]
