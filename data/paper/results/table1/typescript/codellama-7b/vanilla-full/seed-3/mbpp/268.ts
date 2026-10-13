function find_star_num(n: number): number {
  if(n < 1) {
    return 0;
  }
  var cur_num = 1;
  for(var i = 0; i < n; i++) {
    cur_num = cur_num * 10 + 1;
  }
  return cur_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th star number.
