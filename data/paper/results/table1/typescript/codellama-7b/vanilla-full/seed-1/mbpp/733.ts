function find_first_occurrence(A: number[], x: number): number {
    let left = 0
    let right = A.length - 1
    
    while (left <= right) {
        let middle = (left + right) >> 1
        if (A[middle] === x)
            return middle
        else if (A[middle] < x)
            left = middle + 1
        else
            right = middle - 1
    }
    
    return -1
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the index of the first occurrence of a given number in a sorted array.
