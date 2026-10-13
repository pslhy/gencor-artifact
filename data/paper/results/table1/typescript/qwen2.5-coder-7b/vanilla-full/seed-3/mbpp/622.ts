function get_median(arr1: number[], arr2: number[], n: number): number { 
    let i = 0; // Current index of arr1 
    let j = 0; // Current index of arr2 
    let count: number = 0; 
    let median: number = -1; 
    let m1 = -1, m2 = -1; 

    while (count <= n) { 
        count++; 
        m2 = m1; 
        if (i == n) { 
            m1 = arr2[0]; 
            break; 
        } 
        else if (j == n) { 
            m1 = arr1[0]; 
            break; 
        } 
        if (arr1[i] <= arr2[j]) { 
            m1 = arr1[i]; 
            i++; 
        } 
        else { 
            m1 = arr2[j]; 
            j++; 
        } 
    } 
    median = (m1 + m2) / 2; 
    return median; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
