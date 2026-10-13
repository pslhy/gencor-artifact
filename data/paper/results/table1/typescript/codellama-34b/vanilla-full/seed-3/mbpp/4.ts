function heap_queue_largest(nums: number[], n: number): number[] {
  if (n < 1 || n > nums.length) {
    throw new Error("Invalid n");
  }

  // Build a heap queue of the first n elements
  for (let i = Math.floor(n / 2) - 1; i >= 0; i--) {
    heapify(nums, i, n);
  }

  // Swap the smallest element with the last element in the heap queue
  swap(nums, 0, n - 1);

  // Move the smallest element to the end of the array
  for (let i = 0; i < n - 1; i++) {
    swap(nums, i, i + 1);
  }

  // Heapify the remaining elements in the heap queue
  for (let i = 0; i < nums.length; i++) {
    heapify(nums, i, n - 1);
  }

  // Swap the first n elements with the last n elements in the array
  for (let i = 0; i < n; i++) {
    swap(nums, i, nums.length - i - 1);
  }

  return nums.slice(nums.length - n, nums.length);
}

function swap(nums: number[], i: number, j: number): void {
  const temp = nums[i];
  nums[i] = nums[j];
  nums[j] = temp;
}

function heapify(nums: number[], i: number, n: number): void {
  const left = 2 * i + 1;
  const right = 2 * i + 2;

  if (left < n && nums[left] > nums[i]) {
    swap(nums, left, i);
  }

  if (right < n && nums[right] > nums[i]) {
    swap(nums, right, i);
  }
}

// Example usage:
console.log(heap_queue_largest([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)); // [8, 7, 6]
console.log(heap_queue_largest([1, 2, 3, 4, 5, 6, 7, 8, 9], 5)); // [7, 6, 5, 4, 3]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
