function count_integer(list1: (number | string | number)[]): number { 
    return list1.filter(item => typeof item === 'number' && Number.isInteger(item)).length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that returns the number of integer elements in a given array.
