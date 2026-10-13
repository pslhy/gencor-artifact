function heap_sort(iterable: number[]): number[] {  
    let list = iterable.slice(); // Create a copy of the list to avoid modifying the original array
    let len = list.length, end = len - 1;

    heapify(list, len);

    while (end > 0) {
        swap(list, end, 0); // Swap the root (max value) of the heap with the last element
        end -= 1; // Reduce the size of the heap by one
        sift_down(list, 0, end); // Sift down the new root to maintain the heap property
    }

    return list;
}

function heapify(list: number[], len: number) {
    let start = Math.floor((len - 2) / 2); // Start from the parent of the last leaf
    while (start >= 0) {
        sift_down(list, start, len - 1); // Sift down the element at the current position
        start -= 1; // Move to the next parent
    }
}

function sift_down(list: number[], start: number, end: number) {
    let root = start;
    while ((root * 2 + 1 <= end)) {
        let child = root * 2 + 1; // Left child
        let swap = root; // Keep track of the largest child

        if (list[swap] < list[child]) {
            swap = child;
        }
        if (child + 1 <= end && list[swap] < list[child + 1]) {
            swap = child + 1; // Right child
        }
        if (swap === root) {
            return; // The current root is the largest, no need to swap
        } else {
            swap(list, root, swap); // Swap the largest child with the current root
            root = swap; // Move to the child to continue sifting down
        }
    }
}

function swap(list: number[], a: number, b: number) {
    let temp = list[a];
    list[a] = list[b];
    list[b] = temp;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
