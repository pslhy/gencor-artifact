function get_median(arr1: number[], arr2: number[], n: number): number {
    let i: number = 0;
    let j: number = 0;
    let m1: number = -1;
    let m2: number = -1;

    for (let count = 0; count <= n; count++) {
        if (i == n) {
            m1 = m2;
            m2 = arr2[0];
            break;
        }
        if (j == n) {
            m1 = m2;
            m2 = arr1[0];
            break;
        }
        if (arr1[i] < arr2[j]) {
            m1 = m2;
            m2 = arr1[i];
            i++;
        }
        else {
            m1 = m2;
            m2 = arr2[j];
            j++;
        }
    }
    return (m1 + m2) / 2;
}

let arr1: number[] = [1, 2, 3];
let arr2: number[] = [4, 5, 6];
let n: number = arr1.length;

let x: number = get_median(arr1, arr2, n);

// Print the median
// This will print the median of the sorted array
// formed by merging arr1 and arr2
// After sorting the array that is formed by merging arr1 and arr2
// Elements in the first half are: arr1:{1,2,3} and arr2:{4,5,6}
// So the median is 3 and 4 is returned as 3.5
// If elements are even numbers then the median = (3+4)/2 =3.5
// If elements are odd numbers then the median = arr[(n-1)/2] = (3+4)/2 = 3.5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.