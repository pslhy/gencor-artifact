function find_kth(arr1: number[], arr2: number[], k: number): number { 
    let i = 0, j = 0; 
    while (i < arr1.length && j < arr2.length) { 
        if (arr1[i] < arr2[j]) 
            i++; 
        else
            j++; 
        k--; 
    } 
  
    if (i == arr1.length) 
        return arr2[j + k - 1]; 
  
    if (j == arr2.length) 
        return arr1[i + k - 1]; 
  
    return Math.min(arr1[i], arr2[j]); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
