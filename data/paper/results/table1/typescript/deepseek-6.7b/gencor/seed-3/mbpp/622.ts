
function get_median(arr1: number[], arr2: number[], n: number): number {
    let i: number;
    let j: number;
    let m1 = -1; 
    let m2 = -1;
    
    for (i = 0; i <= n; i++) {
        if(i == n) {
            m1 = arr1[i - 1];
            m2 = arr2[0];
            break;
        }
        if(arr1[i] > arr2[0]) {
            m1 = arr1[i];
            m2 = arr2[i];
            break;
        }
    }

    return (m1 + m2) / 2;
}

let arr1 = [1, 2, 3, 6];
let arr2 = [4, 5, 6, 7];
let n = arr1.length;

console.log(`Median of the two arrays is : ${get_median(arr1, arr2, n)}`);

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
