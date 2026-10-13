function sum_of_digits(nums: any[]): number {
  if(nums.lenght === 0){
    return 0;
  } else {
    const result: number = 0;
    for(const index = 0; index < nums.lenght; index++){
      const num = nums[index];
      while(num > 0){
        result += num % 10;
        num = Math.floor(num / 10);
      }
    }
    return result;
  }
}

console.log("The sum of digits of the numbers are: ", sum_of_digits([123,45678,9]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to compute the sum of digits of each number of a given array.
