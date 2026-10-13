function get_median(arr1: number[], arr2: number[], n: number): number {
    let i, x = 0, y = n;
    while (x < y) {
        i = Math.floor((x + y) / 2);
        if (arr1[i] < arr2[n - i - 1])
            x = i + 1;
        else
            y = i;
    }

    let median1 = Math.max(arr1[x - 1], arr2[n - x]);
    let median2 = Math.min(arr1[x], arr2[n - x - 1]);

    return (median1 + median2) / 2;
}

console.log(get_median([1, 2, 3, 6], [4, 5, 6, 7], 4));  // Output: 4.5
console.log(get_median([1, 2, 7, 8], [3, 5, 6, 9], 4));  // Output: 5.0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
