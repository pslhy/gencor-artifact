
function is_undulating(n: number): boolean {
  if(n < 0){
      return false;
  }
  let str_n = n.toString()
  let i = 0;
  let previous = str_n[0]
  while(i < str_n.length){
      let current = str_n[i]
      if(current == previous || current == previous + 1){
          i = i + 1
      } else {
          return false;
      }
      previous = current
  }
  return true
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
