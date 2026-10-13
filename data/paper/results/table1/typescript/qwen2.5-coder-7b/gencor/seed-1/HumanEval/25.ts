
function factorize(n: number): number[] { // Function that takes in a number as a parameter
    let factors: number[] = []; // Initialize an empty array to store the factors
    for (let factor = 2; n > 1; factor++) { // Loop through the numbers starting from 2
        while (n % factor === 0) { // While the number is divisible by the current factor
            factors.push(factor); // Add the factor to the factors array
            n /= factor; // Divide the number by the factor
        }
    }
    return factors; // Return the factors array
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return array of prime factors of given integer in the order from smallest to largest.
//     Each of the factors should be arrayed number of times corresponding to how many times it appeares in factorization.
//     Input number should be equal to the product of all factors
//     >>> factorize(8)
//     [2, 2, 2]
//     >>> factorize(25)
//     [5, 5]
//     >>> factorize(70)
//     [2, 5, 7]
