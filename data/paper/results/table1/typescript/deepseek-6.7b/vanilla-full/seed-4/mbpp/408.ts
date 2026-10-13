function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {
    let result: number[][] = [];
    if(nums1.length === 0 || nums2.length === 0) {
        return result;
    }
    let heap = new MinHeap((a, b) => nums1[a[0]] + nums2[a[1]] - nums1[b[0]] - nums2[b[1]]);
    for(let i=0; i<nums1.length && i<k; i++) {
        heap.push([i, 0]);
    }
    while(k-- > 0 && heap.size() > 0) {
        let ids = heap.pop();
        result.push([nums1[ids[0]], nums2[ids[1]]]);
        if(ids[1] < nums2.length - 1) {
            heap.push([ids[0], ids[1]+1]);
        }
    }
    return result;
}

class MinHeap {
    arr: number[][];
    size: number;
    cmp: (a: number[], b: number[]) => boolean;
  
    constructor(cmp: (a: number[], b: number[]) => boolean) {
        this.arr = [];
        this.size = 0;
        this.cmp = cmp;
    }
  
    push(value: number[]) {
        this.arr.push(value);
        this.size++;
        this.heapifyUp(this.size - 1);
    }
  
    pop() {
        let poppedValue = this.arr[0];
        this.arr[0] = this.arr[this.size - 1];
        this.size--;
        this.heapifyDown(0);
        return poppedValue;
    }
  
    heapifyUp(index: number) {
        let parentIndex = Math.floor((index - 1) / 2);
        while(index > 0 && this.cmp(this.arr[index], this.arr[parentIndex])) {
            this.arr[parentIndex] = this.arr[index];
            this.arr[index] = this.arr[parentIndex];
            index = parentIndex;
            parentIndex = Math.floor((index - 1) / 2);
        }
    }

    heapifyDown(index: number) {
        while(true) {
            let leftChild = 2 * index + 1;
            let rightChild = 2 * index + 2;
            let smallestIndex = index;
            if(leftChild < this.size && this.cmp(this.arr[leftChild], this.arr[smallestIndex])) {
                smallestIndex = leftChild;
            }
            if(rightChild < this.size && this.cmp(this.arr[rightChild], this.arr[smallestIndex])) {
                smallestIndex = rightChild;
            }
            if(smallestIndex === index) {
                break;
            }
            let temp = this.arr[index];
            this.arr[index] = this.arr[smallestIndex];
            this.arr[smallestIndex] = temp;
            index = smallestIndex;
        }
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
