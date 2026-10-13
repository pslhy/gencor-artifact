function get_median(arr1: number[], arr2: number[], n: number): number {
    let i = 0, j = 0, m1 = -1, m2 = -1;

    for (let count = 0; count <= n; count++)
    {
        m1 = m2;
        if(i == n)
        {
            m2 = arr2[0];
            break;
        }
        else if(j == n)
        {
            m2 = arr1[0];
            break;
        }
        else if(arr1[i] < arr2[j])
        {
            m2 = arr1[i];
            i++;
        }
        else
        {
            m2 = arr2[j];
            j++;
        }
    }

    return (m1 + m2)/2;
}

function findMedian(arr1: number[], arr2: number[], n: number): number {
   if (n <= 0)
        return -1;
   else if (n == 1)
       return ((arr1[0] + arr2[0]) / 2);
   else if (n == 2)
       return ((max(arr1[0], arr2[0]) + min(arr1[1], arr2[1])) / 2);

   return get_median(arr1, arr2, n);
}

function max(a: number, b: number): number {
    return (a > b) ? a : b;
}

function min(a: number, b: number): number {
    return (a < b) ? a : b;
}

let arr1 = [1, 2, 3, 6];
let arr2 = [4, 5, 6, 7];
let n = arr1.length;
console.log(findMedian(arr1, arr2, n)); // output: 4.5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
