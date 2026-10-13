function pancake_sort(nums: number[]): number[] { 
  let size = nums.length;

  // Function to flip the subarray at the first count elements
  function flip(subArr: number[], count: number): void {
    let start = 0;
    let end = count - 1;
    while (start < end) {
      let temp = subArr[start];
      subArr[start] = subArr[end];
      subArr[end] = temp;
      start++;
      end--;
    }
  }

  // One by one move largest unsorted element to the beginning
  while (size > 1) { 

    // Find the index of the maximum element in subarray 0...size-1
    let mi = 0;
    for (let i = 0; i < size; i++) {
      if (nums[i] > nums[mi]) {
        mi = i;
      }
    }

    // Move the maximum number to beginning
    if (mi != size - 1) {

      // First move maximum number to beginning
      flip(nums, mi + 1); 

      // Now move the maximum number to end by reversing current array
      flip(nums, size); 
    }
    size -= 1;
  }
  return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.