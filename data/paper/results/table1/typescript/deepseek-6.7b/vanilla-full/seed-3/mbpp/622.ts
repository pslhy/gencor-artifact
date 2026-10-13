function get_median(arr1: number[], arr2: number[], n: number): number {
    let i, j;
    let count, median;
    let m1 = -1, m2 = -1;
  
    for (count = 0; count <= n * 2;) {
        if (arr1[0] < arr2[0]) {
            m1 = arr1[0];
            arr1.shift();
        } else {
            m1 = arr2[0];
            arr2.shift();
        }
        count += 1;
  
        if (count == n)
            m2 = m1;
        else if (count == 2 * n)
            return (m1 + m2) / 2;
    }
}

console.log(get_median([1,3,5], [2,4,6], 3))


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
