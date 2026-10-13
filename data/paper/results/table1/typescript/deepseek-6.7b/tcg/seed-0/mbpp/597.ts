function find_kth(arr1: number[], arr2: number[], k: number): number {
    let m = arr1.length;
    let n = arr2.length;

    if (k > m + n) {
        throw new Error("K is greater than the size of combined arrays.");
    }

    let i = Math.min(m, Math.floor(k / 2));
    let j = Math.min(n, Math.floor(k / 2));

    while (i + j < k) {
        if (i === 0 || j === 0) {
            throw new Error("K is out of range.");
        }

        if (arr1[i - 1] > arr2[j - 1]) {
            arr1.splice(0, j);
            i = i + j;
            j = 0;
        } else {
            arr2.splice(0, i);
            j = j + i;
            i = 0;
        }
    }

    if (i === 0) {
        return arr2[k - i - 1];
    }

    if (j === 0) {
        return arr1[k - j - 1];
    }

    return Math.max(arr1[i - 1], arr2[j - 1]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.