function subject_marks(subjectmarks: [string, number][]): [string, number][] { 
    subjectmarks.sort((a: [string, number], b: [string, number]) => a[1] - b[1]);
    return subjectmarks; 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of arrays using the second value of each array.
