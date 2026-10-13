function cube_Sum(n: number): number {
    let sum = 0;
    for (let i = 2; i <= 2*n; i += 2) {
        sum += i * i * i;
    }
    return sum;
}

// To find the cube sum of first 'n' even natural numbers, you can call the function with 'n/2' as the argument.
console.log(cube_Sum(2)); // Outputs: 36


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the cube sum of first n even natural numbers.
