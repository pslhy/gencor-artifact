function heap_sort(iterable: number[]): number[] {
    // 1. Add to min-heap
    const heap = new Heap<number>((a, b) => a - b);
    for (const element of iterable) {
        heap.push(element);
    }

    // 2. Remove min element from heap and append to result array
    const result: number[] = [];
    while (!heap.isEmpty()) {
        const element = heap.pop() as number;
        result.push(element);
    }

    // 3. Return result array
    return result;
}

class Heap<T> {
    private buffer: T[];

    constructor(private comparator: Comparator<T>) {
        this.buffer = [];
    }

    push(element: T) {
        this.buffer.push(element);
        this.shiftUp(this.buffer.length - 1);
    }

    pop(): T | undefined {
        if (this.isEmpty()) {
            return undefined;
        }

        const result = this.buffer[0];

        if (this.buffer.length === 1) {
            this.buffer.length = 0;
            return result;
        }

        this.buffer[0] = this.buffer.pop() as T;
        this.shiftDown(0);

        return result;
    }

    private shiftUp(index: number) {
        let parent = this.parentIndex(index);
        while (parent >= 0 && this.comparator(this.buffer[index], this.buffer[parent]) < 0) {
            this.swap(index, parent);
            index = parent;
            parent = this.parentIndex(index);
        }
    }

    private shiftDown(index: number) {
        let child = this.leftIndex(index);
        while (child >= 0 && this.childIndex(child) < this.buffer.length) {
            let minChild = child;
            const right = this.rightIndex(child);
            if (right >= 0 && this.comparator(this.buffer[right], this.buffer[minChild]) < 0) {
                minChild = right;
            }

            if (this.comparator(this.buffer[minChild], this.buffer[index]) < 0) {
                this.swap(index, minChild);
                index = minChild;
            } else {
                return;
            }

            child = this.leftIndex(index);
        }
    }

    private parentIndex(index: number) {
        return Math.floor((index - 1) / 2);
    }

    private leftIndex(index: number) {
        return 2 * index + 1;
    }

    private rightIndex(index: number) {
        return 2 * index + 2;
    }

    private childIndex(index: number) {
        return this.leftIndex(index) < this.buffer.length ? this.leftIndex(index) : -1;
    }

    private swap(index1: number, index2: number) {
        [this.buffer[index1], this.buffer[index2]] = [this.buffer[index2], this.buffer[index1]];
    }

    isEmpty(): boolean {
        return this.buffer.length === 0;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
