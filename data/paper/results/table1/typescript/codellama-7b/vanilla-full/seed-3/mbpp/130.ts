function max_occurrences(nums: number[]): number {
  if(nums.length === 0) return null;

  const freq = new Map<number, number>();

  for(let i = 0; i < nums.length; i++) {
    const num = nums[i];
    if(!freq.has(num)) {
      freq.set(num, 1);
    } else {
      freq.set(num, freq.get(num) + 1);
    }
  }

  let maxFreq = 0;
  let maxNum = null;
  for(const [num, freq] of freq.entries()) {
    if(freq > maxFreq) {
      maxFreq = freq;
      maxNum = num;
    }
  }

  return maxNum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
