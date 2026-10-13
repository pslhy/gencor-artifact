function find_kth(arr1: number[], arr2: number[], k: number): number {
    let i = 0, j = 0, count = 0;
    while (i < arr1.length && j < arr2.length && count < k) {
        const element1 = arr1[i], element2 = arr2[j];
        if (element1 <= element2) {
            count += element1;
            i++;
        } else {
            count += element2;
            j++;
        }
    }
    if (count === k) {
        return count;
    } else if (count < k) {
        return find_kth(arr1.slice(i), arr2.slice(j), k - count);
    } else {
        return find_kth(arr1.slice(i - 1), arr2.slice(j - 1), k - count + 1);
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
