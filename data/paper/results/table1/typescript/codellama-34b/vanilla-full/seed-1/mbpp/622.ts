function get_median(arr1: number[], arr2: number[], n: number): number {
    let median = 0;

    // calculate the median of the combined array
    for (let i = 0; i < n; i++) {
        let max_arr1 = arr1[i];
        let min_arr2 = arr2[i];
        if (max_arr1 > min_arr2) {
            median += max_arr1;
        } else {
            median += min_arr2;
        }
    }

    // return the median
    return median / n;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
