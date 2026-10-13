function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {    
    const result: number[][] = [];
    const heap = new MinHeap<[number, number, number]>();
    
    for (let i = 0; i < Math.min(nums1.length, k); i++) {
        heap.insert([nums1[i] + nums2[0], i, 0]);
    }
    
    while (heap.size() > 0 && result.length < k) {
        const [sum, i, j] = heap.remove();
        result.push([nums1[i], nums2[j]]);
        if (j + 1 < nums2.length) {
            heap.insert([nums1[i] + nums2[j + 1], i, j + 1]);
        }
    }
    
    return result;
}

class MinHeap<T> {
    private heap: T[] = [];

    constructor(private compareFn: (a: T, b: T) => number = (a, b) => (a as any) - (b as any)) {}

    insert(value: T): void {
        this.heap.push(value);
        this.bubbleUp(this.heap.length - 1);
    }

    remove(): T {
        const root = this.heap[0];
        const last = this.heap.pop();
        if (this.heap.length > 0) {
            this.heap[0] = last;
            this.bubbleDown(0);
        }
        return root;
    }

    size(): number {
        return this.heap.length;
    }

    private bubbleUp(index: number): void {
        while (index > 0) {
            const parent = Math.floor((index - 1) / 2);
            if (this.compareFn(this.heap[parent], this.heap[index]) > 0) {
                [this.heap[parent], this.heap[index]] = [this.heap[index], this.heap[parent]];
                index = parent;
            } else {
                break;
            }
        }
    }

    private bubbleDown(index: number): void {
        while (true) {
            let left = 2 * index + 1;
            let right = 2 * index + 2;
            let smallest = index;

            if (left < this.heap.length && this.compareFn(this.heap[left], this.heap[smallest]) < 0) {
                smallest = left;
            }
            if (right < this.heap.length && this.compareFn(this.heap[right], this.heap[smallest]) < 0) {
                smallest = right;
            }
            if (smallest !== index) {
                [this.heap[smallest], this.heap[index]] = [this.heap[index], this.heap[smallest]];
                index = smallest;
            } else {
                break;
            }
        }
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
