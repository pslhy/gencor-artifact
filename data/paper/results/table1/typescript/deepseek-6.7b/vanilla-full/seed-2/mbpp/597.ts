function find_kth(arr1: number[], arr2: number[], k: number): number {
    let len1 = arr1.length;
    let len2 = arr2.length;
    if (k > len1 + len2) {
        throw new Error('k is larger than the sum of the two arrays');
    }
    
    let i = j = p = 0;
    let result = -1;
    
    while (i + j <= k) {
        if (i == len1) {
            result = arr2[j + k - i];
            break;
        }
        if (j == len2) {
            result = arr1[i + k - j];
            break;
        }
        if (arr1[i] <= arr2[j]) {
            result = arr1[i];
            i++;
        } else {
            result = arr2[j];
            j++;
        }
        if (i + j == k) {
            break;
        }
    }
    
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
