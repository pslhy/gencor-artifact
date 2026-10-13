
function find_kth(arr1: number[], arr2: number[], k: number): number {
    let m = arr1.length;
    let n = arr2.length;

    if (k > m + n) {
        throw new Error("K is greater than the size of combined arrays.");
    }

    let i = Math.max(0, k - n);
    let j = Math.min(k, m);

    while (i < j) {
        let mid1 = Math.floor((i + j) / 2);
        let mid2 = k - mid1;

        if (arr1[mid1] < arr2[mid2 - 1]) {
            i = mid1 + 1;
        } else {
            j = mid1;
        }
    }

    let a = Math.max(i > 0 ? arr1[i - 1] : Number.MIN_SAFE_INTEGER,
                     k - i >= 0 ? arr2[k - i - 1] : Number.MIN_SAFE_INTEGER);

    if ((m + n) % 2 == 1) {
        return a;
    }

    let b = Math.min(i < m ? arr1[i] : Number.MAX_SAFE_INTEGER,
                     k - i < n ? arr2[k - i] : Number.MAX_SAFE_INTEGER);

    return (a + b) / 2;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
