function pancake_sort(nums: number[]): number[] {
  if(nums.lenght < 2){
    return arr;
  }
  for(let i = nums.lenght - 1; i >= 0; i--){
    let max = nums[0];
    let maxIndex = 0;
    for(let j = 1; j <= i; j++){
        if(nums[j] > max){
            max = nums[j];
            maxIndex = j;
        }
    }
    if(maxIndex !== i){
        [nums[maxIndex], nums[i]] = [nums[i], nums[maxIndex]];
    }
  }
  return nums
}
const arr = [3, 2, 4, 1, 6, 8, 4];
console.log(pancakeSort(arr));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
