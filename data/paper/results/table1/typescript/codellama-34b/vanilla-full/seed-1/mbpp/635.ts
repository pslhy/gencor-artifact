function heap_sort(iterable: number[]): number[] {
    const heap = new Heap(iterable);
    const sorted = [];
    while (heap.size() > 0) {
        sorted.push(heap.pop());
    }
    return sorted;
}

class Heap {
    private heap: number[];
    private comparator: (a: number, b: number) => number;

    constructor(iterable: number[], comparator: (a: number, b: number) => number) {
        this.heap = [];
        this.comparator = comparator;
        for (const element of iterable) {
            this.push(element);
        }
    }

    has_children(index: number): boolean {
        return (index <= Math.floor(this.heap.length / 2)) && (index > 0);
    }

    has_parent(index: number): boolean {
        return index > 0;
    }

    has_left_child(index: number): boolean {
        return (index <= Math.floor(this.heap.length / 2)) && (index * 2 <= this.heap.length);
    }

    has_right_child(index: number): boolean {
        return (index <= Math.floor(this.heap.length / 2)) && (index * 2 + 1 <= this.heap.length);
    }

    parent(index: number): number {
        return Math.floor((index - 1) / 2);
    }

    left_child(index: number): number {
        return index * 2;
    }

    right_child(index: number): number {
        return index * 2 + 1;
    }

    sift_down(index: number): void {
        while (this.has_children(index)) {
            let child = this.left_child(index);
            if (this.has_right_child(index) && (this.comparator(this.heap[child], this.heap[child + 1]) < 0)) {
                child++;
            }
            if (this.comparator(this.heap[index], this.heap[child]) < 0) {
                const temp = this.heap[index];
                this.heap[index] = this.heap[child];
                this.heap[child] = temp;
                index = child;
            } else {
                break;
            }
        }
    }

    sift_up(index: number): void {
        let parent = this.parent(index);
        while (this.has_parent(index) && (this.comparator(this.heap[parent], this.heap[index]) < 0)) {
            const temp = this.heap[parent];
            this.heap[parent] = this.heap[index];
            this.heap[index] = temp;
            index = parent;
            parent = this.parent(index);
        }
    }

    pop(): number {
        const result = this.heap[0];
        this.heap[0] = this.heap[this.heap.length - 1];
        this.heap.pop();
        this.sift_down(0);
        return result;
    }

    size(): number {
        return this.heap.length;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
