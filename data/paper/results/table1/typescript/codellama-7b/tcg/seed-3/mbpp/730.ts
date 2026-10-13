function consecutive_duplicates(nums: any[]): any[] {
  if(nums.length === 0) {
    return [];
  } else {
    const result: any[] = [nums[0]];
    for(let i = 1; i < nums.length; i++) {
      if(nums[i] !== result[result.length - 1]) {
        result.push(nums[i]);
      }
    }
    return result;
  }
}

const nums = [1, 2, 2, 3, 4, 4, 4, 5, 5, 5];

const result = consecutive_duplicates(nums);

// Tests

// 1, 2, 3, 4, 5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove consecutive duplicates of a given array.