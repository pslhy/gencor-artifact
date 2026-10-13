function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    const result: number[][] = [];
    const minHeap = new PriorityQueue<[number, number]>();
    for (let i = 0; i < nums1.length; i++) {
        for (let j = 0; j < nums2.length; j++) {
            minHeap.push([nums1[i] + nums2[j], [nums1[i], nums2[j]]]);
            if (minHeap.size() > k) {
                minHeap.pop();
            }
        }
    }
    while (minHeap.size() > 0) {
        result.push(minHeap.pop()[1]);
    }
    return result;
}

class PriorityQueue<T> {
    private elements: T[] = [];

    size(): number {
        return this.elements.length;
    }

    push(element: T): void {
        this.elements.push(element);
        this.bubbleUp();
    }

    pop(): T | undefined {
        if (this.size() === 0) return undefined;
        const result = this.elements[0];
        this.elements[0] = this.elements[this.size() - 1];
        this.elements.pop();
        this.bubbleDown();
        return result;
    }

    private bubbleUp(): void {
        let idx: number = this.size() - 1;
        while (idx > 0) {
            const parentIdx = Math.floor((idx - 1) / 2);
            if (this.elements[parentIdx][0] >= this.elements[idx][0]) break;
            [this.elements[parentIdx], this.elements[idx]] = [this.elements[idx], this.elements[parentIdx]];
            idx = parentIdx;
        }
    }

    private bubbleDown(): void {
        let idx: number = 0;
        while (idx < this.size()) {
            const leftChildIdx = idx * 2 + 1;
            const rightChildIdx = leftChildIdx + 1;
            if (leftChildIdx >= this.size()) break;
            const leftChild = this.elements[leftChildIdx];
            const rightChild = rightChildIdx < this.size() ? this.elements[rightChildIdx] : null;
            if (this.elements[idx][0] <= leftChild[0] && (rightChild === null || this.elements[idx][0] <= rightChild[0])) break;
            if (leftChild[0] < rightChild[0] || rightChild === null) {
                [this.elements[idx], this.elements[leftChildIdx]] = [leftChild, this.elements[idx]];
                idx = leftChildIdx;
            } else {
                [this.elements[idx], this.elements[rightChildIdx]] = [rightChild, this.elements[idx]];
                idx = rightChildIdx;
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
