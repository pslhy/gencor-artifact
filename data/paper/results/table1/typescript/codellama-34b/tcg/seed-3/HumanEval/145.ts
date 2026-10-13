function order_by_points(nums: number[]): number[] {
  if(nums.length === 0)
    return nums;
   else {
      const result: number[] = nums.map((n: number) =>{
        let sum = 0;
        while(n > 0){
          sum += (-1) * (n % 10);
          n ==(n / 10) || 0;
  }
  return sum;
    }
      )
      const sortedResult = result.sort()
      const answer: number[] = []
      for(let i = 0; i < nums.length; i++){
        const num = nums[i];
        const index = sortedResult.indexOf(result[i])
        answer[index] = num;
  }
 }
 return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which sorts the given array of integers
//     in ascending order according to the sum of their digits.
//     Note: if there are several items with similar sum of their digits,
//     order them based on their index in original array.
//     For example:
//     >>> order_by_points([1, 11, -1, -11, -12])
//     [-1, -11, 1, -12, 11]
//     >>> order_by_points([])
//     []