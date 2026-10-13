function is_undulating(n: number): boolean {;
  let str = n.toString();
  let len = str.length;
  
  if (len % 2 !== 0 || len < 3) return false;
  
  for (let i = 0; i < len; i += 2) {
    if (str[i] !== str[i + 1]) return false;
  }
  
  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
