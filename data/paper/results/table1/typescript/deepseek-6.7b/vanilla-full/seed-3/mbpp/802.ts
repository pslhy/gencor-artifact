function count_rotation(arr: number[]): number {
    let low = 0;
    let high = arr.length - 1;
  
    while (low <= high) {
        if (arr[low] <= arr[high]) {
            return low;
        }
  
        let mid = Math.floor((low + high) / 2);
  
        let next = (mid + 1) % arr.length;
        let prev = (mid - 1 + arr.length) % arr.length;
  
        if (arr[mid] <= arr[next] && arr[mid] <= arr[prev]) {
            return mid;
        } 
  
        if (arr[mid] <= arr[high]) {
            high = mid - 1;
        } 
  
        if (arr[mid] >= arr[low]) {
            low = mid + 1;
        }
    }
  
    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/
