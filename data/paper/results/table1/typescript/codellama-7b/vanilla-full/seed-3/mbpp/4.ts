function heap_queue_largest(nums: number[], n: number): number[] {
  if(n >= nums.length || n == 0) {
    return nums.sort((a, b) => b - a);
  }

  // Build a max heap from the input array
  for(let i = Math.floor(n / 2); i >= 0; i--) {
    heapify(nums, i, n);
  }

  // Extract the max n elements from the heap
  const result = [];
  for(let i = nums.length - 1; i >= 0; i--) {
    if(result.length < n) {
      result.push(nums[0]);
      nums[0] = nums[i];
      nums.length--;
    }
    heapify(nums, 0, n);
  }

  // Sort the result array in descending order
  return result.sort((a, b) => b - a);
}

function heapify(nums: number[], i: number, n: number) {
  const left = i * 2 + 1;
  const right = i * 2 + 2;
  let largest = i;

  if(left < n && nums[left] > nums[largest]) {
    largest = left;
  }

  if(right < n && nums[right] > nums[largest]) {
    largest = right;
  }

  if(largest !== i) {
    const temp = nums[i];
    nums[i] = nums[largest];
    nums[largest] = temp;
    heapify(nums, largest, n);
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
