function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number { 
    let left = 0; 
    let right = rotations - 1; 
    while (left <= right) { 
        let mid = Math.floor((left + right) / 2); 
        let pos = (ranges[mid][0] > ranges[mid][1] ? ((index >= ranges[mid][0]) ? index : (index + ranges[mid][1] + 1)) : ((index >= ranges[mid][0]) ? (index - ranges[mid][0]) : index)); 
        if (pos == ranges[mid][1]) { 
            left = mid + 1; 
        } else { 
            right = mid - 1; 
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
