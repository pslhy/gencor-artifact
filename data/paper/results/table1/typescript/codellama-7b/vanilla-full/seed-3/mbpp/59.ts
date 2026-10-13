function is_octagonal(n: number): number {
  if(n < 1) {
    return 0;
  }
  var s = n.toString()
  var x = 0;
  for(let i = 1; i <= s.length; i += 2) {
      if(s[i] != "1") {
          x++;
      }
  }
  return x
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
