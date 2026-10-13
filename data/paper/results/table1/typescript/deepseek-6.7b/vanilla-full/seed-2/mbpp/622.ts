function get_median(arr1: number[], arr2: number[], n: number): number {
    let arr = [...arr1, ...arr2].sort((a, b) => a - b);

    if (n % 2 != 0)
        return arr[Math.floor(n / 2)];

    return (arr[(n - 1) / 2] + arr[n / 2]) / 2;
}

function findMedian(arr1: number[], arr2: number[]) {
    let n1 = arr1.length;
    let n2 = arr2.length;
    if (n1 != n2)
        return -1;
  
    return get_median(arr1, arr2, n1);
}

let arr1 = [1, 2, 3, 6];
let arr2 = [4, 5, 7, 8];
console.log(findMedian(arr1, arr2));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
