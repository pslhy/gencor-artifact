function check_Consecutive(l: number[]): boolean {
  if(l.length <= 1)
    return false;

  let diff = l[1] - l[0];
  for(let i = 1; i < l.length; i++) {
    if(l[i] - l[i-1] !== diff)
      return false;
  }

  return true;
}

check_Consecutive([1, 2, 3]); // true
check_Consecutive([1]); // false
check_Consecutive([1, 2, 4]); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array contains consecutive numbers or not.
