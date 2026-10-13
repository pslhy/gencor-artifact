function find_First_Missing(array: number[]): number {
    let i: number;
    for(i = 0; i < array.length; i++) {
        if (array[i] !== i + 1) {
            return i + 1;
        }
    }
    return i + 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
