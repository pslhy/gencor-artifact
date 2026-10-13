function heap_sort(iterable: number[]): number[] {  
    let list = iterable.slice(); // Create a copy of the list to avoid modifying the original array
    let len = list.length;
    heap_sort(list);
    return list;
  
    // Helper function to build the max-heap
    function build_max_heap(arr: number[]) : void {
        let len_ = arr.length;
        for (let i = Math.floor(len_ / 2) - 1; i >= 0; i--) {
            heap_sort(arr);
        }
    }

    // Helper function to heapify a subtree rooted with node i which is an index in arr[]
    function heap_sort_one(arr: number[], n: number, i: number) : void {
        let largest = i; // Initialize largest as root
        let l = 2 * i + 1; // left = 2*i + 1
        let r = 2 * i + 2; // right = 2*i + 2

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
            let swap = arr[i];
            arr[i] = arr[largest];
            arr[largest] = swap;

            // Recursively heapify the affected sub-tree
            heap_sort_one(arr, n, largest);
        }
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.