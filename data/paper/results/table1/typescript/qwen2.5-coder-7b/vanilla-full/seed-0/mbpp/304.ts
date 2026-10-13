function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number { 
    let left = 0; 
    let right = rotations - 1; 
  
    while (left <= right) { 
        let mid = left + Math.floor((right - left) / 2); 
  
        let start = ranges[mid][0]; 
        let end = ranges[mid][1]; 
  
        if (index >= start && index <= end) { 
            if ((rotations - mid) % 2 === 0) { 
                return arr[index]; 
            } else { 
                let len = end - start + 1; 
                return arr[(index - (len - (index - start))) % arr.length]; 
            } 
        } else if (index > end) { 
            left = mid + 1; 
        } else { 
            right = mid - 1; 
        } 
    } 
  
    return -1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.
