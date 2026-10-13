function heap_sort(iterable: number[]): number[] { 
    // Implementation of heap sort algorithm
    function heapify(arr: number[], n: number, i: number) {
        let largest = i; // Initialize largest as root
        const l = 2 * i + 1; // left = 2*i + 1
        const r = 2 * i + 2; // right = 2*i + 2

        // If left child is larger than root
        if (l < n && arr[l] > arr[largest]) {
            largest = l;
        }

        // If right child is larger than largest so far
        if (r < n && arr[r] > arr[largest]) {
            largest = r;
        }

        // If largest is not root
        if (largest !== i) {
            [arr[i], arr[largest]] = [arr[largest], arr[i]]; // swap

            // Recursively heapify the affected sub-tree
            heapify(arr, n, largest);
        }
    }

    const n = iterable.length;

    // Build heap (rearrange array)
    for (let i = Math.floor(n / 2) - 1; i >= 0; i--) {
        heapify(iterable, n, i);
    }

    // One by one extract an element from heap
    for (let i = n - 1; i > 0; i--) {
        [iterable[0], iterable[i]] = [iterable[i], iterable[0]]; // swap root and last element

        // call max heapify on the reduced heap
        heapify(iterable, i, 0);
    }
    
    return iterable;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
