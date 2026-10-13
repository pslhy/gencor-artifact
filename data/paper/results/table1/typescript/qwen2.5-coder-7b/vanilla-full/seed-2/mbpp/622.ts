function get_median(arr1: number[], arr2: number[], n: number): number { 
    let i = 0; 
    let j = 0; 
    let m1 = -1, m2 = -1; 
    let count: number = 0; 
  
    // Loop through both arrays 
    while (count < n + 1) {
        count++; 
  
        // Keep m1 and m2 as previous two elements 
        m2 = m1; 
  
        // Returns median 
        if (i == n) {
            m1 = arr2[0]; 
            break; 
        } 
        else if (j == n) {
            m1 = arr1[0]; 
            break; 
        } 
  
        // Pick minimum of two elements and 
        // assign it to m1 
        if (arr1[i] <= arr2[j]) {
            m1 = arr1[i]; 
            i++; 
        } else {
            m1 = arr2[j]; 
            j++; 
        } 
    } 
  
    return (m1 + m2) / 2; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
