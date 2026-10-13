function find_First_Missing(array: number[]): number { 
    let left: number = 0; 
    let right: number = array.length - 1; 
    while (left <= right) { 
        let mid: number = Math.floor((left + right) / 2); 
        if (array[mid] > mid) { 
            right = mid - 1; 
        } else { 
            left = mid + 1; 
        } 
    } 
    return left; 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
