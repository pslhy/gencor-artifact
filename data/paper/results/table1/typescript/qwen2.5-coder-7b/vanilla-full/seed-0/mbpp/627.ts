function find_First_Missing(array: number[]): number { 
    let size = array.length; 
    if (array[0] !== 0) return 0; 
    if (array[size - 1] === size - 1) return size; 
    for (let i = 1; i < size; i++) { 
        if (array[i] !== array[i - 1] + 1) { 
            return array[i - 1] + 1; 
        } 
    } 
    return size; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
