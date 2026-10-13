function _sum(arr: number[]): number {
    if(arr.length === 0) {
        return 0;
    }
    return arr.reduce((a, b) => a + b, 0);
}

console.log(_sum([1, 2, 3, 4])); // output: 10


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of an array.
