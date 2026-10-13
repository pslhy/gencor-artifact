function count_rotation(arr: number[]): number {
    let min_index = find_min(arr, 0, arr.length - 1);
    return min_index;
}

function find_min(arr: number[], low: number, high: number): number {
    if (high < low)
        return 0;

    if (high === low)
        return low;

    let mid = Math.floor((low + high) / 2);

    if (mid < high && arr[mid + 1] < arr[mid])
        return mid + 1;

    if (mid > low && arr[mid] < arr[mid - 1])
        return mid;

    if (arr[high] > arr[mid])
        return find_min(arr, low, mid - 1);

    return find_min(arr, mid + 1, high);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/
