function find_first_occurrence(A: number[], x: number): number { 
    let low: number = 0; 
    let high: number = A.length - 1; 
    while (low <= high) { 
        let mid: number = low + Math.floor((high - low) / 2); 
        if ((mid === 0 || x > A[mid - 1]) && A[mid] === x) 
            return mid; 
        else if (x > A[mid]) 
            low = mid + 1; 
        else
            high = mid - 1; 
    } 
    return -1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the index of the first occurrence of a given number in a sorted array.
