function swap_List(newList: number[]): number[] { 
    let first = newList[0]; 
    let last = newList[newList.length - 1]; 
  
    // Swap the first and last element 
    newList[0] = last; 
    newList[newList.length - 1] = first; 
  
    return newList; 
}

// Example usage:
console.log(swap_List([12,34,5,67,89])); // Output: [89, 34, 5, 67, 12]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to interchange the first and last element in a given array.
