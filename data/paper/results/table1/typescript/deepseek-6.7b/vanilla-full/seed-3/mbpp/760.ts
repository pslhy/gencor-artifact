function unique_Element(arr: number[]): boolean {
    let uniqueValues = new Set(arr);
    return uniqueValues.size === 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array of numbers contains only one distinct element or not.
