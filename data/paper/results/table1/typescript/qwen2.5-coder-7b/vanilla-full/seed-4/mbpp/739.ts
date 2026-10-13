function find_Index(n: number): number { 
    // Calculate the lower bound of the largest n-digit number 
    let lower = Math.pow(10, n - 1); 
    let upper = Math.pow(10, n) - 1; 
  
    // Iterate to find the smallest triangular number within the range 
    for (let i = 0; ; i++) { 
        // Calculate the ith triangular number 
        let triangular = (i * (i + 1)) / 2; 
  
        // Check if the triangular number is within the range 
        if (triangular >= lower && triangular <= upper) { 
            return i; 
        } 
  
        // Break the loop if the triangular number exceeds the upper limit 
        if (triangular > upper) { 
            break; 
        } 
    } 
  
    // Return -1 if no triangular number is found 
    return -1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
