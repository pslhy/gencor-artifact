function max_Abs_Diff(arr: number[]): number { 
    if (arr.length < 2) { 
        throw new Error("Array must contain at least two elements"); 
    } 
    let minElement = arr[0]; 
    let maxElement = arr[0]; 
    for (let i = 1; i < arr.length; i++) { 
        if (arr[i] < minElement) { 
            minElement = arr[i]; 
        } else if (arr[i] > maxElement) { 
            maxElement = arr[i]; 
        } 
    } 
    return Math.abs(maxElement - minElement); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the maximum difference between any two elements in a given array.
