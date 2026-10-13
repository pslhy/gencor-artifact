function max_length(list1: number[][]): [number, number[]] {
    let maxLen = Math.max(...list1.map(arr => arr.length));
    let longArray = list1.filter(arr => arr.length === maxLen);
    return [maxLen, longArray[0]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.
