function k_smallest_pairs(nums1: number[], nums2: number[], k: number): number[][] {;
  let minHeap: Array<[number, number, number]> = [];

  const addPair = (i: number, j: number) => {
    if (i < nums1.length && j < nums2.length) {
      heappush(minHeap, [nums1[i] + nums2[j], i, j]);
    }
  };

  addPair(0, 0);
  let result: number[][] = [];

  while (minHeap.length && result.length < k) {
    const [sum, i, j] = minHeap.shift()!;
    result.push([nums1[i], nums2[j]]);
    addPair(i, j + 1);
    if (j === 0) {
      addPair(i + 1, 0);
    }
  }

  return result;
}

function heappush(heap: any[], element: any): void {
  heap.push(element);
  let index = heap.length - 1;
  while (index > 0) {
    let parent = Math.floor((index - 1) / 2);
    if (heap[parent][0] <= element[0]) break;
    [heap[parent], heap[index]] = [heap[index], heap[parent]];
    index = parent;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
