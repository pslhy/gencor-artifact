function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number { 
    let count = 0; 
    for (let i = rotations - 1; i >= 0; i--) { 
        let left = ranges[i][0]; 
        let right = ranges[i][1]; 
        if (left <= index && right >= index) { 
            if ((rotations - i) % 2 !== 0) { 
                if (left == right) {
                    return arr[left];
                } else if (index == left) {
                    index = right;
                } else {
                    index = left;
                }
            } else { 
                return arr[index];
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
