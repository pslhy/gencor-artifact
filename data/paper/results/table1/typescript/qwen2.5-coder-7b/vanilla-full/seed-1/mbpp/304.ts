function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number { 
    for (let i = rotations - 1; i >= 0; i--) { 
        if (index >= ranges[i][0] && index <= ranges[i][1]) { 
            if (index === ranges[i][0]) { 
                index = ranges[i][1]; 
            } else { 
                index--; 
            } 
        } 
    } 
    return arr[index]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.
