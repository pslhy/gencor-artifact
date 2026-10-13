function count_rotation(arr: number[]): number { 
    let size = arr.length; 
    let pivot = -1; 
  
    for (let i = 0; i < size - 1; i++) { 
        if (arr[i] > arr[i + 1]) { 
            pivot = i + 1; 
            break; 
        } 
    } 
  
    // If no pivot is found, array is already sorted 
    if (pivot == -1) return 0; 
  
    // Check if last element is smaller than the first element 
    if (arr[pivot] < arr[0]) return pivot; 
  
    // Array is already sorted 
    return 0; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/
