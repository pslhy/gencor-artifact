function rotate_right(list: number[], m: number): number[] { 
    let size = list.length; 
    let temp = list[size-1]; 
  
    for(let i = size - 1; i > 0; --i) { 
        list[i] = list[i - 1]; 
    } 

    list[0] = temp; 

    return list; 
}

function rotateArr(arr: number[], n: number, m: number): number[] { 
    for (let i = 0; i < m; ++i) { 
        rotate_right(arr, n); 
    } 
    return arr; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to rotate a given array by specified number of items to the right direction. https://www.geeksforgeeks.org/tsthon-program-right-rotate-array-n/
