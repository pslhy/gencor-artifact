function search(arr: number[]): number {
    let low = 0;
    let high = arr.length - 1;

    if (high < 0) {
        return -1;
    }
    if (high === 0) {
        return arr[0];
    }
    if (arr[low] !== arr[low + 1]) {
        return arr[low];
    }
    if (arr[high] !== arr[high - 1]) {
        return arr[high];
    }

    while (low <= high) {
        const mid = Math.floor(low + (high - low) / 2);
        if (arr[mid] !== arr[mid + 1] && arr[mid] !== arr[mid - 1]) {
            return arr[mid];
        }
        if ((mid % 2 === 0 && arr[mid] === arr[mid + 1])
            || (mid % 2 === 1 && arr[mid] === arr[mid - 1])) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }

    return -1;
}

const arr = [1, 1, 2, 2, 3, 4, 4, 5, 5];
console.log(search(arr)); // 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
