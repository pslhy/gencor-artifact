function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
    // Perform required rotations
    for (let i = 0; i < rotations; i++) {
        arr.unshift(arr.pop() as number);
    }

    // Apply the ranges
    for (let range of ranges) {
        let start = range[0];
        let end = range[1];
        let direction = range[2];
        if (direction === 0) {
            arr = arr.slice(0, start).concat(arr.slice(end + 1));
        } else {
            arr = arr.slice(0, start).concat([arr[start]], arr.slice(start + 1, end + 1), [arr[end]], arr.slice(end + 1));
        }
    }

    // Return element at given index
    return arr[index];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.
