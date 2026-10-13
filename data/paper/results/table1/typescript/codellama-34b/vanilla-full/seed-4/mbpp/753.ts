function min_k(test_list: [string, number][], K: number): [string, number][] {
   if (K > test_list.length) {
       return [];
   }
   let min_heap = new MinHeap();
   for (let i = 0; i < test_list.length; i++) {
       min_heap.insert(new Node(test_list[i][0], test_list[i][1]));
   }
   let result = new Array(K);
   for (let i = 0; i < K; i++) {
       result[i] = min_heap.extractMin().data;
   }
   return result;
}

class Node {
   public data: [string, number];
   public priority: number;
   constructor(data: [string, number], priority: number) {
       this.data = data;
       this.priority = priority;
   }
}

class MinHeap {
   private heap: Node[] = [];
   private positionMap: Map<string, number> = new Map();
   
   public insert(node: Node) {
       this.heap.push(node);
       this.positionMap.set(node.data[0], this.heap.length - 1);
       this.bubbleUp(this.heap.length - 1);
   }
   
   public extractMin(): Node {
       if (this.heap.length === 0) {
           return null;
       }
       if (this.heap.length === 1) {
           this.positionMap.delete(this.heap[0].data[0]);
           return this.heap.pop();
       }
       let min = 0;
       for (let i = 1; i < this.heap.length; i++) {
           if (this.heap[i].priority < this.heap[min].priority) {
               min = i;
           }
       }
       this.swap(min, this.heap.length - 1);
       this.positionMap.delete(this.heap[min].data[0]);
       return this.heap.pop();
   }
   
   private bubbleUp(index: number) {
       let parent = Math.floor((index - 1) / 2);
       while (parent >= 0 && this.heap[index].priority < this.heap[parent].priority) {
           this.swap(index, parent);
           index = parent;
           parent = Math.floor((index - 1) / 2);
       }
   }
   
   private swap(index1: number, index2: number) {
       let temp = this.heap[index1];
       this.heap[index1] = this.heap[index2];
       this.heap[index2] = temp;
       this.positionMap.set(this.heap[index1].data[0], index1);
       this.positionMap.set(this.heap[index2].data[0], index2);
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
