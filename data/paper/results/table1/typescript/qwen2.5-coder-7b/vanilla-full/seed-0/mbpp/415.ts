function max_Product(arr: number[]): [number, number] { 
    let size = arr.length; 
  
    if (size < 2) {
        throw new Error("Array must contain at least two elements");
    } 
  
    let x = -1, y = -1; 
  
    for (let i = 0; i < size; i++) { 
        for (let j = i + 1; j < size; j++) { 
            if (x == -1 || y == -1 || arr[i] * arr[j] > arr[x] * arr[y]) { 
                y = x; 
                x = i; 
            } else if (arr[i] * arr[j] > arr[y] * arr[x]) {
                y = i; 
            } 
        } 
    } 
  
    return [arr[x], arr[y]]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
