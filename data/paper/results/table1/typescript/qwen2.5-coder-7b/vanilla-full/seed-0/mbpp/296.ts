function get_Inv_Count(arr: number[]): number { 
    let size = arr.length; 
    let temp: number[] = new Array(size * 2); 
    for (let i = 0; i < size; i++) 
        temp[i] = arr[i]; 
  
    return mergeSortAndCount(temp, 0, size - 1); 
} 

function mergeSortAndCount(arr: number[], l: number, r: number): number { 
    let mid, inv_count = 0; 
    if (l < r) { 
        mid = Math.floor((l + r) / 2); 
  
        inv_count += mergeSortAndCount(arr, l, mid); 
        inv_count += mergeSortAndCount(arr, mid + 1, r); 
  
        inv_count += mergeAndCount(arr, l, mid, r); 
    } 
    return inv_count; 
} 

function mergeAndCount(arr: number[], l: number, mid: number, r: number): number { 
    let n1 = mid - l + 1; 
    let n2 = r - mid; 
  
    let L = new Array(n1); 
    let R = new Array(n2); 
  
    for (let i = 0; i < n1; i++) 
        L[i] = arr[l + i]; 
    for (let i = 0; i < n2; i++) 
        R[i] = arr[mid + 1 + i]; 
  
    let i = 0, j = 0, k = l, inv_count = 0; 
  
    while (i < n1 && j < n2) { 
        if (L[i] <= R[j]) { 
            arr[k++] = L[i++]; 
        } else { 
            arr[k++] = R[j++]; 
  
            inv_count += n1 - i; 
        } 
    } 
  
    while (i < n1) 
        arr[k++] = L[i++]; 
  
    while (j < n2) 
        arr[k++] = R[j++]; 
  
    return inv_count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count inversions in an array.
