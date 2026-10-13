function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
    let result = -1;
    for (let i = 0; i < rotations; i++) {
        const range = ranges[i];
        const start = range[0];
        const end = range[1];
        for (let j = start; j <= end; j++) {
            if (j == index) {
                result = arr[j];
                break;
            }
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.
