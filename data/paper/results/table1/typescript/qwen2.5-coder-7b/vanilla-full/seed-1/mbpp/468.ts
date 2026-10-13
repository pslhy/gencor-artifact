function max_product(arr: number[]): number { 
    const n: number = arr.length; 
    const mps: number[] = arr.slice(); 
  
    for (let i: number = 1; i < n; i++) { 
        for (let j: number = 0; j < i; j++) { 
            if (arr[i] > arr[j] && mps[i] < mps[j] * arr[i]) { 
                mps[i] = mps[j] * arr[i]; 
            } 
        } 
    } 
  
    return Math.max(...mps); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
