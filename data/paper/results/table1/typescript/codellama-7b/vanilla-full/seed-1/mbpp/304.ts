function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
    let startIndex = 0;
    let endIndex = arr.length;

    for (let i = 0; i < rotations; i++) {
        startIndex += ranges[i][0];
        endIndex += ranges[i][1];
    }

    let sortedArr = arr.sort((a, b) => a - b);

    return sortedArr[index + startIndex - 1]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.
