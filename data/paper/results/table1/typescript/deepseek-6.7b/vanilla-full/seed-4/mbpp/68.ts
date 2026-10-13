function is_Monotonic(A: number[]): boolean {
    return (A.slice().sort((a, b) => a - b).toString() === A.join(',')) || 
           (A.slice().sort((a, b) => b - a).toString() === A.join(','));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array is monotonic or not.
