function armstrong_number(number: number): boolean {
  if(number < 0){
      return false;
  }
  let str_num = number.toString()
  let sum = 0;
  for(let i = 0; i < str_num.length; i++){
      sum += Math.pow(parseInt(str_num[i]), str_num.length);
  }
  return sum == number;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
