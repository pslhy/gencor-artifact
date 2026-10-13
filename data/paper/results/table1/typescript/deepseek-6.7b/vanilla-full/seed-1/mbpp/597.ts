function find_kth(arr1: number[], arr2: number[], k: number): number {
    let m = arr1.length;
    let n = arr2.length;

    if (k > m + n) {
        throw "k should be less than or equal to the sum of lengths of two arrays";
    }

    let i = j = count = 0;

    while (i < m && j < n) {
        if (arr1[i] < arr2[j]) {
            if (count == k - 1) {
                return arr1[i];
            }
            i++;
        } else {
            if (count == k - 1) {
                return arr2[j];
            }
            j++;
        }
        count++;
    }

    while (i < m) {
        if (count == k - 1) {
            return arr1[i];
        }
        i++;
        count++;
    }

    while (j < n) {
        if (count == k - 1) {
            return arr2[j];
        }
        j++;
        count++;
    }

    throw "k is bigger than the sum of lengths of two arrays";
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
