function pancake_sort(nums: number[]): number[] { 
  async function flip(end: number): Promise<void> {
    let start = 0;
    let mid = Math.trunc(end / 2);
    while (start < mid) {
      let temp = nums[start];
      nums[start] = nums[end];
      nums[end] = temp;
      start++;
      end--;
      // To simulate asynchronous flipping, using a small delay
      await new Promise(res => setTimeout(res, 1));
    }
  }

  async function sort(nums: number[], up_to: number): Promise<void> {
    if (up_to === 1) return;
    let max_index = 0;
    let max_value = nums[0];
    for (let i = 1; i < up_to; i++) {
      if (nums[i] > max_value) {
        max_index = i;
        max_value = nums[i];
      }
    }
    if (max_index === up_to - 1) return; // already in place
    await flip(max_index);
    await flip(up_to - 1);
    await sort(nums, up_to - 1);
  }

  await sort(nums, nums.length);
  return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
