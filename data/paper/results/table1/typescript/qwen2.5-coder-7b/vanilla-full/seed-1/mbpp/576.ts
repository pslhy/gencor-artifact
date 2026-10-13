function is_Sub_Array(A: number[], B: number[]): boolean { 
    let n = A.length; 
    let m = B.length; 
  
    // Create a frequency array to store count of elements in A 
    let freq = new Array(Math.max(n, m)).fill(0); 
  
    // Increment count in frequency array for elements in A 
    for (let i = 0; i < n; i++) { 
        freq[A[i]]++; 
    } 
  
    // Decrease count in frequency array for elements in B 
    for (let i = 0; i < m; i++) { 
        freq[B[i]]--; 
    } 
  
    // If frequency of any element is non-zero, then B is not a subarray of A 
    for (let i = 0; i < Math.max(n, m); i++) { 
        if (freq[i] !== 0) { 
            return false; 
        } 
    } 
  
    // If all frequencies are zero, then B is a subarray of A 
    return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether an array is subarray of another or not.
