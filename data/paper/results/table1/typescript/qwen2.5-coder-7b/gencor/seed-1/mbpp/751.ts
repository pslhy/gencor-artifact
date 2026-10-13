
function check_min_heap(arr: number[]): boolean { // Function to check if the given array represents a min heap or not
    let n = arr.length; // Get the length of the array
    for(let i = 0; i <= Math.floor(n / 2) - 1; i++) { // Iterate through the array up to the last parent node
        if(2 * i + 1 < n && arr[i] > arr[2 * i + 1]) // Check if the left child exists and is smaller than the parent
            return false; // If left child is smaller, it's not a min heap
        if(2 * i + 2 < n && arr[i] > arr[2 * i + 2]) // Check if the right child exists and is smaller than the parent
            return false; // If right child is smaller, it's not a min heap
    }
    return true; // If no violations are found, it's a min heap
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
