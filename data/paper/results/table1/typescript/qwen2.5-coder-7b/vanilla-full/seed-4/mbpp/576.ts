function is_Sub_Array(A: number[], B: number[]): boolean { 
    let a = A.length; 
    let b = B.length; 
  
    // Check if array B is empty or if its length is greater 
    // than A, then A can never be a subset of B 
    if (b == 0) 
        return true; 
    if (b > a) 
        return false; 
  
    // Create an array count[] from elements of B and get  frequencies of all elements of B  
    let count = new Array(256).fill(0); 
    for (let i = 0; i < b; i++)  
        count[B[i]]++; 
  
    // Now check every element of arr[] if it exists in count[] or not. 
    for (let i = 0; i < a; i++) { 
        if (count[A[i]] != 0) { 
            // decrement the frequency if element 
            // is found 
            count[A[i]]--; 
        } else { 
            // If element is not found then return false 
            return false; 
        } 
    } 
    return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
