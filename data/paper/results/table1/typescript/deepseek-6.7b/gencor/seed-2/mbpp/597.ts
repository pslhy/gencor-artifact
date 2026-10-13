
function find_kth(arr1: number[], arr2: number[], k: number): number {
    let len1 = arr1.length;
    let len2 = arr2.length;
    if (k > len1 + len2) {
        throw new Error('k is larger than the sum of the two arrays');
    }
    
    let i = Math.min(k, len1);
    let j = Math.min(k, len2);

    while (i > 0 && j > 0) {
        if (arr1[i - 1] > arr2[j - 1]) {
            if (i + j === k) {
                return arr2[j - 1];
            }
            j--;
        } else {
            if (i + j === k) {
                return arr1[i - 1];
            }
            i--;
        }
    }

    // if arr1 is longer, the kth element might be in arr1
    while (i > 0) {
        if (i + j === k) {
            return arr1[i - 1];
        }
        i--;
    }

    // if arr2 is longer, the kth element might be in arr2
    while (j > 0) {
        if (i + j === k) {
            return arr2[j - 1];
        }
        j--;
    }

    throw new Error('k exceeds the length of either array');
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
