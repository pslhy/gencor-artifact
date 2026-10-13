function last(arr: number[], x: number): number {
    let left = 0;
    let right = arr.length - 1;

    while (left <= right) {
        const mid = left + (right - left) / 2 | 0;
        if (arr[mid] === x) {
            right = mid - 1;
        } else if (arr[mid] > x) {
            right = mid - 1;
        } else {
            left = mid + 1;
        }
    }

    return right;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last position of an element in a sorted array.
