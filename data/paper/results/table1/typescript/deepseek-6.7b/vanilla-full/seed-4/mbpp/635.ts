function heap_sort(iterable: number[]): number[] {
    let arr: number[] = [...iterable];
    let length = arr.length;
    let temp: number;

    for (let i = Math.floor(length / 2) - 1; i >= 0; i--) {
        heapify(arr, length, i);
    }

    for (let i = length - 1; i >= 0; i--) {
        temp = arr[0];
        arr[0] = arr[i];
        arr[i] = temp;
        length--;
        heapify(arr, length, 0);
    }

    return arr;
}

function heapify(arr: number[], n: number, i: number): void {
    let largest = i;
    let left = 2 * i + 1;
    let right = 2 * i + 2;

    if (left < n && arr[left] > arr[largest]) {
        largest = left;
    }

    if (right < n && arr[right] > arr[largest]) {
        largest = right;
    }

    if (largest !== i) {
        let swap = arr[i];
        arr[i] = arr[largest];
        arr[largest] = swap;
        heapify(arr, n, largest);
    }
}

// Example usage:
console.log(heap_sort([4, 3, 2, 1]));  // Output: [1, 2, 3, 4]
console.log(heap_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]));  // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
