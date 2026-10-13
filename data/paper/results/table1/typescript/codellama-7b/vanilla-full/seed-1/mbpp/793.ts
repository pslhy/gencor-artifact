function last(arr: number[], x: number): number {
    let left = 0;
    let right = arr.length;

    while (left < right) {
        const mid = (left + right) >>> 1;
        if (arr[mid] < x) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }

    if (left < arr.length && arr[left] === x) {
        return left;
    }

    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last position of an element in a sorted array.
