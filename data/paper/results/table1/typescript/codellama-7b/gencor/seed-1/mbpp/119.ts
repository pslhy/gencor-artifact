
function search(arr: number[]): number {
    let left = 0;
    let right = arr.length;

    while (left < right) {
        const mid = (left + right) >>> 1;
        if (arr[mid] !== arr[mid - 1] && arr[mid] !== arr[mid + 1]) {
            return arr[mid];
        }

        if (arr[mid] === arr[mid - 1] && arr[mid] === arr[mid + 1]) {
            left = mid + 1;
            right = mid - 1;
        } else if (arr[mid] === arr[mid - 1]) {
            left = mid + 1;
        } else if (arr[mid] === arr[mid + 1]) {
            right = mid - 1;
        }
    }

    return -1;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
