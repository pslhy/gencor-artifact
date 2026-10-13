function swap_List(newList: number[]): number[] {
    if (newList.length > 1) {
        [newList[0], newList[newList.length - 1]] = [newList[newList.length - 1], newList[0]];
    }
    return newList;
}

console.log(swap_List([1, 2, 3, 4, 5])); // returns [5, 2, 3, 4, 1]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to interchange the first and last elements in an array.
