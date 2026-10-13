function find_kth(arr1: number[], arr2: number[], k: number): number {
    let m = arr1.length, n = arr2.length, i = j = 0;
  
    while (m > 0 && n > 0 && k > 1) {
        if (arr1[i] < arr2[j]) {
            i++;
        } else {
            j++;
        }
        k--;
    }

    if (m === 0) {
        return arr2[j + k - 1];
    }
    if (n === 0) {
        return arr1[i + k - 1];
    }

    if (arr1[i] < arr2[j]) {
        return arr1[i];
    } else {
        return arr2[j];
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
