function heap_queue_largest(nums: number[], n: number): number[] {
    let res: number[] = [];
    if (!nums || !n || n <= 0 || nums.length === 0 || nums.length < n) return res;

    let maxHeap: MaxHeap = new MaxHeap();
    for (let num of nums) {
        maxHeap.insert(num);
    }

    for (let i = 0; i < n; i++) {
        res.push(maxHeap.extractMax());
    }

    res.sort((a, b) => b - a);  // descending order
    return res;
}

class MaxHeap {
    private data: number[] = [];

    insert(val: number): void {
        this.data.push(val);
        this.siftUp(this.data.length - 1);
    }

    extractMax(): number {
        if (this.data.length === 1) return this.data.pop();
        let res: number = this.data[0];
        this.data[0] = this.data.pop();
        this.siftDown(0);
        return res;
    }

    private siftUp(index: number): void {
        while (index > 0) {
            let parent = Math.floor((index - 1) / 2);
            if (this.data[parent] >= this.data[index]) break;
            [this.data[index], this.data[parent]] = [this.data[parent], this.data[index]];
            index = parent;
        }
    }

    private siftDown(index: number): void {
        while (true) {
            let left = 2 * index + 1,
                right = 2 * index + 2,
                largest = index;
            if (left < this.data.length && this.data[left] > this.data[largest]) largest = left;
            if (right < this.data.length && this.data[right] > this.data[largest]) largest = right;
            if (largest === index) break;
            [this.data[index], this.data[largest]] = [this.data[largest], this.data[index]];
            index = largest;
        }
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
