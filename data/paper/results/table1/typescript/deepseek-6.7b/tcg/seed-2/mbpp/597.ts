function find_kth(arr1: number[], arr2: number[], k: number): number {
    let len1 = arr1.length;
    let len2 = arr2.length;
    if (k > len1 + len2) {
        throw new Error('k is larger than the sum of the two arrays');
    }
    
    let i = Math.min(k, len1);
    let j = Math.min(k, len2);

    while (i > 0 && j > 0) {
        if (arr1[i-1] > arr2[j-1]) {
            if (i + j === k) {
                return arr1[i-1];
            }
            i--;
        } else {
            if (i + j === k) {
                return arr2[j-1];
            }
            j--;
        }
    }

    if (i === 0) {
        return arr2[k-1];
    }
    return arr1[k-1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.