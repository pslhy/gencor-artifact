function max_Product(arr: number[]): [number, number] { 
    let n = arr.length; 
    if (n < 2) {
        throw new Error("Array must contain at least two elements");
    } 
  
    let max1 = -Infinity, max2 = -Infinity; 
    let min1 = Infinity, min2 = Infinity; 
  
    for (let i = 0; i < n; i++) { 
        let num = arr[i];
        if (num > max1) { 
            max2 = max1; 
            max1 = num; 
        } else if (num > max2 && num != max1) { 
            max2 = num; 
        } 
  
        if (num < min1) { 
            min2 = min1; 
            min1 = num; 
        } else if (num < min2 && num != min1) { 
            min2 = num; 
        } 
    } 
  
    if (max1 * max2 > min1 * min2) {
        return [max1, max2];
    } else {
        return [min1, min2];
    } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
