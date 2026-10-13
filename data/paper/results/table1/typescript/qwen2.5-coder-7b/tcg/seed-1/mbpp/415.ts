function max_Product(arr: number[]): [number, number] { 
    if (arr.length < 2) { 
        throw new Error("Array must contain at least two elements"); 
    } 
    let min1 = Number.MAX_SAFE_INTEGER; 
    let min2 = Number.MAX_SAFE_INTEGER; 
    let max1 = Number.MIN_SAFE_INTEGER; 
    let max2 = Number.MIN_SAFE_INTEGER; 
    for (let i = 0; i < arr.length; i++) { 
        if (arr[i] < min1) { 
            min2 = min1; 
            min1 = arr[i]; 
        } else if (arr[i] < min2) { 
            min2 = arr[i]; 
        } 
        if (arr[i] > max1) { 
            max2 = max1; 
            max1 = arr[i]; 
        } else if (arr[i] > max2) { 
            max2 = arr[i]; 
        } 
    } 
    let prod1 = max1 * max2; 
    let prod2 = min1 * min2; 
    return (prod1 > prod2) ? [max1, max2] as [number, number] : [min1, min2] as [number, number]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.