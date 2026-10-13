function max_product(arr: number[]): number { 
    let n = arr.length; 
    let maxProduct = new Array(n).fill(0); 
  
    for (let i = 0; i < n; i++) { 
        maxProduct[i] = arr[i]; 
    } 
  
    for (let i = 1; i < n; i++) { 
        for (let j = 0; j < i; j++) { 
            if (arr[i] > arr[j] && maxProduct[i] < maxProduct[j] * arr[i]) { 
                maxProduct[i] = maxProduct[j] * arr[i]; 
            } 
        } 
    } 
  
    return Math.max(...maxProduct); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
