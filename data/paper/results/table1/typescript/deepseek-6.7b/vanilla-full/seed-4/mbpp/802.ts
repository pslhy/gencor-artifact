function count_rotation(arr: number[]): number {
    let n = arr.length;

    // find the index of the smallest element
    let min_index = find_min_index(arr, 0, n - 1);

    return min_index;
}

function find_min_index(arr: number[], low: number, high: number): number {
    // If the array is not rotated
    if (high < low) {
        return 0;
    }

    // If the array has just one element
    if (high === low) {
        return low;
    }

    // Find mid
    let mid = Math.floor((low + high) / 2);

    // Check if mid element is the smallest
    if (mid < high && arr[mid + 1] < arr[mid]) {
        return (mid + 1);
    }

    // Check if mid element is the smallest
    if (mid > low && arr[mid] < arr[mid - 1]) {
        return mid;
    }

    // Decides whether to go left or right
    if (arr[high] > arr[mid]) {
        return find_min_index(arr, low, mid - 1);
    }
    return find_min_index(arr, mid + 1, high);
}

console.log(count_rotation([30, 40, 50, 10, 20])); // 3
console.log(count_rotation([4, 5, 6, 1, 2, 3])); // 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/
