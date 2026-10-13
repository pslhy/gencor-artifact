function count_rotation(arr: number[]): number {
    let low = 0;
    let high = arr.length - 1;

    while (low <= high) {
        let mid = Math.floor((low + high) / 2);

        // check if mid is the minimum
        if (mid < high && arr[mid + 1] < arr[mid]) {
            return mid + 1;
        }

        // check if mid is the maximum
        if (mid > low && arr[mid] < arr[mid - 1]) {
            return mid;
        }

        // update low or high
        if (arr[low] <= arr[mid]) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }

    return 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/
