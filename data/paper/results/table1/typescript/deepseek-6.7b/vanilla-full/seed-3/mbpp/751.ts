function check_min_heap(arr: number[]): boolean {
    let n = arr.length;

    // Last parent node
    let parent = Math.floor(n / 2) - 1;

    // Start from the parent node and go up to the root node
    for (let i = parent; i >= 0; i--) {
        // Left child of arr[i]
        let left = i * 2 + 1;

        // Right child of arr[i]
        let right = i * 2 + 2;
  
        // If left child is greater than parent
        if (left < n && arr[left] < arr[i]) {
            return false;
        }
  
        // If right child is greater than parent
        if (right < n && arr[right] < arr[i]) {
            return false;
        }
    }

    // If all internal nodes pass the test, array represents a min heap
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
