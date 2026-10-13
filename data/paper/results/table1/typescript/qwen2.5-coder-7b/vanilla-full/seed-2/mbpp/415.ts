function max_Product(arr: number[]): [number, number] { 
    let n = arr.length; 
    if (n < 2) {
        throw new Error("Array must contain at least two elements");
    } 
    let a = arr[0], b = arr[1]; 
    for (let i = 2; i < n; i++) { 
        if (arr[i] > a) { 
            b = a; 
            a = arr[i]; 
        } else if (arr[i] > b) { 
            b = arr[i]; 
        } 
    } 
    return [a, b]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
