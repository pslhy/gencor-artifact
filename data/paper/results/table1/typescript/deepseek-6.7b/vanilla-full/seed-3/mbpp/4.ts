function heap_queue_largest(nums: number[], n: number): number[] {
    let heap = new MinHeap();
    for (let num of nums) {
        heap.add(num);
        if (heap.size() > n) {
            heap.poll();
        }
    }
    return heap.getArray().slice().sort((a, b) => b - a);
};

class MinHeap {
    elements: number[] = [];

    leftChildIndex = (index: number): number => 2 * index + 1; 
    rightChildIndex = (index: number): number => 2 * index + 2;

    parentIndex = (index: number): number => Math.floor((index - 1) / 2);

    hasLeftChild = (index: number): boolean => this.leftChildIndex(index) < this.size();

    hasRightChild = (index: number): boolean => this.rightChildIndex(index) < this.size();

    hasParent = (index: number): boolean => this.parentIndex(index) >= 0;

    leftChild = (index: number): number => this.elements[this.leftChildIndex(index)];

    rightChild = (index: number): number => this.elements[this.rightChildIndex(index)];

    parent = (index: number): number => this.elements[this.parentIndex(index)];

    size = (): number => this.elements.length;

    add = (num: number): void => {
        this.elements.push(num);
        this.heapifyUp();
    }

    poll = (): number => {
        if (this.size() == 0) throw new Error();
        let item = this.elements[0];
        this.elements[0] = this.elements.pop();
        this.heapifyDown();
        return item;
    }

    heapifyUp = (): void => {
        let index = this.size() - 1;
        while (this.hasParent(index) && this.parent(index) > this.elements[index]) {
            this.swap(index, this.parentIndex(index));
            index = this.parentIndex(index);
        }
    }

    heapifyDown = (): void => {
        let index = 0;
        while (this.hasLeftChild(index)) {
            let smallerChildIndex = this.leftChildIndex(index);
            if (this.hasRightChild(index) && this.rightChild(index) < this.leftChild(index)) {
                smallerChildIndex = this.rightChildIndex(index);
            }

            if (this.elements[index] < this.elements[smallerChildIndex]) {
                break;
            } else {
                this.swap(index, smallerChildIndex);
            }
            index = smallerChildIndex;
        }
    }

    swap = (index1: number, index2: number): void => {
        let temp = this.elements[index1];
        this.elements[index1] = this.elements[index2];
        this.elements[index2] = temp;
    }

    getArray = (): number[] => {
        return this.elements;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
