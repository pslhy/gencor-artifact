function rearrange_bigger(n: number): any {
  if(n < 10) {
    throw new Error("Input number must be a positive integer greater than or equal to 10");
  }
  let num = n.toString();
  let sorted_num = num.split("").sort().join("");
  let bigger_num = '';
  for(let i = 0; i < sorted_num.length - 1; i++) {
    if(sorted_num[i] < sorted_num[i + 1]) {
      bigger_num += sorted_num[i + 1] + sorted_num[i];
    } else {
      bigger_num += sorted_num[i];
    }
  }
  return parseInt(bigger_num);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
