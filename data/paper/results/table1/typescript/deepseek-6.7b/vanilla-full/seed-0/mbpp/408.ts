function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    const result = [];
    const heap = new MinHeap((a, b) => a[0] + a[1] - (b[0] + b[1]));

    for (let i = 0; i < nums1.length && i < k; i++)
        heap.insert([nums1[i], nums2[0], 0]);

    while (k-- > 0 && !heap.isEmpty()) {
        const smallestPair = heap.extractMin();
        result.push([smallestPair[0], smallestPair[1]]);

        if (smallestPair[2] === nums2.length - 1) continue;
        
        heap.insert([smallestPair[0], nums2[smallestPair[2] + 1], smallestPair[2] + 1]);
    }

    return result;
}

class MinHeap {
    private storage = [];
    private compare;

    constructor(compare = (a, b) => a - b) {
        this.compare = compare;
    }

    insert(value) {
        this.storage.push(value);
        this.siftUp();
    }

    isEmpty() {
        return this.storage.length === 0;
    }

    extractMin() {
        const min = this.storage[0];
        const end = this.storage.pop();

        if (this.storage.length > 0) {
            this.storage[0] = end;
            this.siftDown(0);
        }

        return min;
    }

    siftUp(index = this.size() - 1) {
        while (index > 0 && this.compare(this.storage[index], this.storage[this.parent(index)]) < 0) {
            this.swap(index, this.parent(index));
            index = this.parent(index);
        }
    }

    siftDown(index = 0) {
        while (this.hasLeft(index)) {
            let smallerChildIndex = this.left(index);
            if (
                this.hasRight(index) &&
                this.compare(this.storage[this.right(index)], this.storage[smallerChildIndex]) < 0
            ) {
                smallerChildIndex = this.right(index);
            }

            if (this.compare(this.storage[smallerChildIndex], this.storage[index]) >= 0) break;

            this.swap(index, smallerChildIndex);
            index = smallerChildIndex;
        }
    }

    parent(index) {
        return Math.floor((index - 1) / 2);
    }

    left(index) {
        return index * 2 + 1;
    }

    right(index) {
        return index * 2 + 2;
    }

    hasLeft(index) {
        return this.left(index) < this.size();
    }

    hasRight(index) {
        return this.right(index) < this.size();
    }

    size() {
        return this.storage.length;
    }

    swap(i, j) {
        const temp = this.storage[i];
        this.storage[i] = this.storage[j];
        this.storage[j] = temp;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
