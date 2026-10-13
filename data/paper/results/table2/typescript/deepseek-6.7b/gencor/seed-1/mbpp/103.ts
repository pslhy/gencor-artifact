
function eulerian_num(n: number, m: number): number {
    let lookup: {[key: string]: number} | null[] = new Array(n+1);
  
    for(let i=0; i<lookup.length; i++)
        lookup[i] = new Array(m+1).fill(null)
  
   
   
   

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
