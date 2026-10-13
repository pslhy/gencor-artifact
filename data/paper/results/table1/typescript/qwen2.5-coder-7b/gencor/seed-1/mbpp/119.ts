
function search(arr: number[]): number { // Function that takes in a sorted array as parameter
    let start = 0; // Initialize the start pointer to 0
    let end = arr.length - 1; // Initialize the end pointer to the last index of the array

    while (start <= end) { // Continue the loop while start is less than or equal to end
        if (start == end) return arr[start]; // If start equals end, return the element at start
        const mid = start + Math.floor((end - start) / 2); // Calculate the mid index
        // Check if the mid is even or odd
        if (mid % 2 == 0) {
            if (arr[mid] == arr[mid + 1]) start = mid + 2; // If the current and the next element are same, move start to mid + 2
            // If the current element is not the same as the next element, it means single element is on the left side, so move end to mid
            if (arr[mid] != arr[mid + 1]) end = mid;
        } else {
            if (arr[mid] == arr[mid - 1]) start = mid + 1; // If the current and the previous element are same, move start to mid + 1
            // If the current element is not the same as the previous element, it means single element is on the left side, so move end to mid - 1
            if (arr[mid] != arr[mid - 1]) end = mid - 1;
        }
    }
    return -1; // If no single element is found, return -1
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
