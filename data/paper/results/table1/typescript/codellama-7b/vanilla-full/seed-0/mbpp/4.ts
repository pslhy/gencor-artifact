function heap_queue_largest(nums: number[], n: number): number[] {
  const pq = new HeapQueue<number>((a, b) => b - a);

  for (const num of nums) {
    pq.queue(num);
  }

  const largestNums: number[] = [];

  while (largestNums.length < n && !pq.empty()) {
    largestNums.push(pq.dequeue() as number);
  }

  return largestNums;
}

class HeapQueue<T> {
  private heap: T[] = [];
  constructor(private compare: (a: T, b: T) => number) {}

  public empty() {
    return this.heap.length === 0;
  }

  public peek() {
    return this.heap[0];
  }

  public dequeue(): T {
    return this.heap.shift() as T;
  }

  public queue(element: T) {
    this.heap.push(element);
    this.heapify();
  }

  private heapify() {
    const i = this.heap.length - 1;
    const element = this.heap[i];

    while (i > 0) {
      const parentIdx = (i - 1) >> 1;
      const parent = this.heap[parentIdx];

      if (this.compare(element, parent) > 0) {
        break;
      }

      this.heap[i] = parent;
      i = parentIdx;
    }

    this.heap[i] = element;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
