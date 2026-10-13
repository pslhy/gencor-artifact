function heap_queue_largest(nums: number[], n: number): number[] {
  if (nums.length === 0) {
    return [];
  }

  // Build a max heap from the given array
  for (let i = Math.floor(nums.length / 2) - 1; i >= 0; i--) {
    siftDown(nums, i, nums.length - 1);
  }

  // Extract the largest n numbers from the heap
  const largest = [];
  for (let i = nums.length - n; i < nums.length; i++) {
    largest.push(nums[0]);
    nums[0] = nums[nums.length - 1];
    nums.length--;
    siftDown(nums, 0, nums.length - 1);
  }

  return largest;
}

// Helper function to sift an element down the heap
function siftDown(nums: number[], start: number, end: number): void {
  let parent = start;
  while (parent <= end) {
    let child = 2 * parent + 1;
    if (child <= end && nums[child] > nums[parent]) {
      child++;
    }
    if (child <= end && nums[child] > nums[parent]) {
      swap(nums, parent, child);
      parent = child;
    } else {
      break;
    }
  }
}

// Helper function to swap two elements in an array
function swap(nums: number[], i: number, j: number): void {
  const tmp = nums[i];
  nums[i] = nums[j];
  nums[j] = tmp;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
