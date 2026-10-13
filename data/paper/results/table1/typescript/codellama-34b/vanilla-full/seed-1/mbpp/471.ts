function find_remainder(arr: number[], n: number): number {
    let result = 1;
    for (let i = 0; i < arr.length; i++) {
        result *= arr[i] % n;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the product of the array multiplication modulo n.
