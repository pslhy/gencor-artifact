function swap_List(newList: number[]): number[] {
    let lastIdx = newList.length - 1;
    let firstIdx = 0;
    let lastElem = newList[lastIdx];
    let firstElem = newList[firstIdx];
    newList[lastIdx] = firstElem;
    newList[firstIdx] = lastElem;
    return newList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to interchange the first and last elements in an array.
