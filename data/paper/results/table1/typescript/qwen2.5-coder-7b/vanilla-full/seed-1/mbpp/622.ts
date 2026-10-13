function get_median(arr1: number[], arr2: number[], n: number): number { 
    let i: number = 0; 
    let j: number = 0; 
    let m1: number = -1; 
    let m2: number = -1; 
  
    for (let count = 0; count <= n; count++) { 
        m2 = m1; 
        if (i == n) { 
            m1 = arr2[0]; 
            i++; 
        } else if (j == n) { 
            m1 = arr1[0]; 
            j++; 
        } else if (arr1[i] <= arr2[j]) { 
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
