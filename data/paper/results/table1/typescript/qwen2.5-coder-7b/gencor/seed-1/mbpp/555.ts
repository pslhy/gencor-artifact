
function difference(n: number): number { // Function to find the difference
    let sumOfCubes = 0;
    let sumOfNumbers = 0;
    for (let i = 1; i <= n; i++) { // Loop through the first n natural numbers
        sumOfCubes += Math.pow(i, 3); // Add the cube of each number to sumOfCubes
        sumOfNumbers += i; // Add each number to sumOfNumbers
    }
    return sumOfCubes - sumOfNumbers; // Return the difference
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.
