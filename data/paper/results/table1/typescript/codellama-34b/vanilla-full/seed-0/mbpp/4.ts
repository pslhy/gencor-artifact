function heap_queue_largest(nums: number[], n: number): number[] {
    const heap = new PriorityQueue();
    for (const num of nums) {
        heap.enqueue(num);
    }
    const largest = [];
    for (let i = 0; i < n; i++) {
        largest.push(heap.dequeue());
    }
    return largest;
}

class PriorityQueue {
    private heap: number[] = [];

    enqueue(value: number) {
        this.heap.push(value);
        this.bubbleUp();
    }

    dequeue(): number {
        const value = this.heap[0];
        const last = this.heap.pop();
        if (this.heap.length > 0) {
            this.heap[0] = last;
            this.bubbleDown();
        }
        return value;
    }

    private bubbleUp() {
        let index = this.heap.length - 1;
        while (true) {
            const parentIndex = this.parentIndex(index);
            if (parentIndex < 0 || this.heap[parentIndex] > this.heap[index]) {
                break;
            }
            this.swap(index, parentIndex);
            index = parentIndex;
        }
    }

    private bubbleDown() {
        let index = 0;
        while (true) {
            const childIndex = this.childIndex(index);
            if (childIndex >= this.heap.length || this.heap[index] > this.heap[childIndex]) {
                break;
            }
            this.swap(index, childIndex);
            index = childIndex;
        }
    }

    private swap(i: number, j: number) {
        [this.heap[i], this.heap[j]] = [this.heap[j], this.heap[i]];
    }

    private parentIndex(index: number) {
        return Math.floor((index - 1) / 2);
    }

    private childIndex(index: number) {
        return index * 2 + 1;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
