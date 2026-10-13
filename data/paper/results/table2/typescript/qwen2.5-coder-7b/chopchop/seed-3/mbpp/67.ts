
function bell_number(n: number): number {
    let bell: number = 1;
    let triangle: number = 1;

    for (let i = 1; i < n; i++) {
        triangle = (i + 1) * triangle + bell;
        bell = triangle;
    }

    return bell;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
