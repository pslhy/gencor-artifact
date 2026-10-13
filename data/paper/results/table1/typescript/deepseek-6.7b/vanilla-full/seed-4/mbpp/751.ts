function check_min_heap(arr: number[]): boolean {
    let n = arr.length;

    // Iterate through all parent elements starting from the last parent element
    for (let i = Math.floor(n / 2) - 1; i >= 0; i--) {
        let lc = 2 * i + 1; // left child
        let rc = 2 * i + 2; // right child

        // If left child is smaller than parent then the array does not represent a min heap
        if (lc < n && arr[lc] < arr[i]) return false;

        // If right child is smaller than parent then the array does not represent a min heap
        if (rc < n && arr[rc] < arr[i]) return false;
    }
    // If array follows above condition then it is a heap
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
