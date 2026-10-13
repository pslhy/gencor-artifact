function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    if (nums1.length === 0 || nums2.length === 0 || k === 0) {
        return [];
    }

    const minHeap = new MinHeap<[number, number, number]>();
    for (let i = 0; i < nums1.length && i < k; i++) {
        minHeap.insert([nums1[i] + nums2[0], i, 0]);
    }

    const result: number[][] = [];
    while (k-- > 0 && minHeap.size() > 0) {
        const [sum, i, j] = minHeap.extractMin()!;
        result.push([nums1[i], nums2[j]]);
        if (j + 1 < nums2.length) {
            minHeap.insert([nums1[i] + nums2[j + 1], i, j + 1]);
        }
    }

    return result;
}

class MinHeap<T> {
    private heap: T[] = [];

    private compareFn: (a: T, b: T) => number;

    constructor(compareFn: (a: T, b: T) => number = (a, b) => {
        if (a < b) return -1;
        if (a > b) return 1;
        return 0;
    }) {
        this.compareFn = compareFn;
    }

    private getLeftChildIndex(index: number): number {
        return 2 * index + 1;
    }

    private getRightChildIndex(index: number): number {
        return 2 * index + 2;
    }

    private getParentIndex(index: number): number {
        return Math.floor((index - 1) / 2);
    }

    private hasLeftChild(index: number): boolean {
        return this.getLeftChildIndex(index) < this.heap.length;
    }

    private hasRightChild(index: number): boolean {
        return this.getRightChildIndex(index) < this.heap.length;
    }

    private hasParent(index: number): boolean {
        return this.getParentIndex(index) >= 0;
    }

    private leftChild(index: number): T {
        return this.heap[this.getLeftChildIndex(index)];
    }

    private rightChild(index: number): T {
        return this.heap[this.getRightChildIndex(index)];
    }

    private parent(index: number): T {
        return this.heap[this.getParentIndex(index)];
    }

    private swap(indexOne: number, indexTwo: number): void {
        const tmp = this.heap[indexOne];
        this.heap[indexOne] = this.heap[indexTwo];
        this.heap[indexTwo] = tmp;
    }

    public size(): number {
        return this.heap.length;
    }

    public isEmpty(): boolean {
        return this.size() === 0;
    }

    public insert(value: T): void {
        this.heap.push(value);
        this.heapifyUp();
    }

    publicextractMin(): T | undefined {
        if (this.isEmpty()) {
            return undefined;
        }

        const item = this.heap[0];
        this.heap[0] = this.heap[this.size() - 1];
        this.heap.pop();
        this.heapifyDown();

        return item;
    }

    private heapifyUp(): void {
        let index = this.size() - 1;

        while (this.hasParent(index) && this.compareFn(this.parent(index), this.heap[index]) > 0) {
            this.swap(this.getParentIndex(index), index);
            index = this.getParentIndex(index);
        }
    }

    private heapifyDown(): void {
        let index = 0;

        while (this.hasLeftChild(index)) {
            let smallerChildIndex = this.getLeftChildIndex(index);
            if (this.hasRightChild(index) && this.compareFn(this.rightChild(index), this.leftChild(index)) < 0) {
                smallerChildIndex = this.getRightChildIndex(index);
            }

            if (this.compareFn(this.heap[index], this.heap[smallerChildIndex]) > 0) {
                this.swap(index, smallerChildIndex);
            } else {
                break;
            }

            index = smallerChildIndex;
        }
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
