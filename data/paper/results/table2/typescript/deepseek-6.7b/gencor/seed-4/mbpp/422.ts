
function find_Average_Of_Cube(n: number): number {
    let sum = 0;
    for(let i=1; i<=n; i++) {
       sum += (i*i*i);
    }
    return sum/n

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the average of cubes of first n natural numbers.
