function get_median(arr1: number[], arr2: number[], n: number): number { 
    let i = 0; /* Current index of iArray1 */
    let j = 0; /* Current index of iArray2 */
    let count = 0; /* Count of elements seen so far */
    let m1 = -1, m2 = -1; /* Stores the previous and current median */
  
    /* We have reached the point where count is equal to (n + 1)*/
    while (count <= n) { 
        count++; 
  
        /* If we have reached the end of the array arr1, take the next element from arr2 */
        if (i == n) m1 = m2, m2 = arr2[0], j++; 
        /* Similarl, if we have reached the end of the array arr2, take the next element from arr1 */
        else if (j == n) m1 = m2, m2 = arr1[0], i++; 
  
        /* Pick smaller of both arr1[i] and arr2[j] and put in m2 */
        else if (arr1[i] <= arr2[j]) { 
            m1 = m2, m2 = arr1[i], i++; 
        } 
        else { 
            m1 = m2, m2 = arr2[j], j++; 
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
