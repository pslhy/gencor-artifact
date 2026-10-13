function difference(n: number): number { 
    let sumOfCubes: number = 0; 
    let sumOfNaturalNumbers: number = 0; 
    for (let i = 1; i <= n; i++) { 
        sumOfCubes += Math.pow(i, 3); 
        sumOfNaturalNumbers += i; 
    } 
    return sumOfCubes - sumOfNaturalNumbers; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.