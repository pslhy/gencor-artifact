function pancake_sort(nums: number[]): number[] {
  if(nums.length < 2)
    return nums;
  else {
    const result: number[] = [];
    for(let i = 0; i < nums.length - 1; i++){
      let minindex = i;
      for(let j = i+1; j < nums.length; j++){
        if(nums[j] > nums[minindex]){
          minindex = j;
        }
      }
      if(minindex !== i){
        result.push(nums[minindex]);
        for(let j = minindex; j < nums.length - 1; j++){
          nums[j] = nums[j+1];
        }
      }
    }
    return result;
  }
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.