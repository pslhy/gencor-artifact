
function eulerian_num(n: number, m: number): number {
    let lookup: number = Math.pow(n, m - 1);
    if(n === 0) {
      if(m === 0)
        return 1;
      else
        return 0;
    } 
    
    if(m === 0)
      return n === 1 ? 1 : 0;
        
    return lookup + eulerian_num(n - 1, m) * m * n + eulerian_num(n, m - 1) * n;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
