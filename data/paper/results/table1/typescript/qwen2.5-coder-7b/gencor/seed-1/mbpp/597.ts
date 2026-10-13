
function find_kth(arr1: number[], arr2: number[], k: number): number { // Function to find the kth element from two sorted arrays 
    let i = 0;
    let j = 0;
  
    while (i < arr1.length && j < arr2.length) { // Traverse the arrays until one of them is exhausted
        if (arr1[i] < arr2[j]) {
            k--; // Decrement k since arr1[i] is smaller
            if (k === 0) {
                return arr1[i]; // Return the kth element
            }
            i++; // Move to the next element in arr1
        } else {
            k--; // Decrement k since arr2[j] is smaller
            if (k === 0) {
                return arr2[j]; // Return the kth element
            }
            j++; // Move to the next element in arr2
        }
    }
  
    while (i < arr1.length && k !== 0) { // If arr2 is exhausted, find kth element in arr1
        k--;
        if (k === 0) {
            return arr1[i];
        }
        i++;
    }
  
    while (j < arr2.length && k !== 0) { // If arr1 is exhausted, find kth element in arr2
        k--;
        if (k === 0) {
            return arr2[j];
        }
        j++;
    }
  
    return -1; // If k is out of bounds of the arrays
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
