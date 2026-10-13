function find_kth(arr1: number[], arr2: number[], k: number): number {
    let m = arr1.length;
    let n = arr2.length;
    
    if(m > n) {
        return find_kth(arr2, arr1, k);
    }
    
    if(m === 0) {
        return arr2[k-1];
    }
    
    if(k === 1) {
        return Math.min(arr1[0], arr2[0]);
    }
    
    let i = Math.min(m, Math.floor(k / 2));
    let j = Math.min(n, Math.floor(k / 2));
    
    if(arr1[i-1] > arr2[j-1]) {
        return find_kth(arr1, arr2.slice(j), k-j);
    } else {
        return find_kth(arr1.slice(i), arr2, k-i);
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.