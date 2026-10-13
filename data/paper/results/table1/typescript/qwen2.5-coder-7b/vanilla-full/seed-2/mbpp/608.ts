function bell_Number(n: number): number { 
    let table: number[][] = Array.from({ length: n + 1 }, () => Array(n + 1).fill(0)); 
    table[0][0] = 1; 
  
    for(let i = 1; i <= n; i++) { 
        table[i][0] = table[i - 1][i - 1]; 
  
        for(let j = 1; j <= i; j++) { 
            table[i][j] = table[i - 1][j - 1] + table[i][j - 1]; 
        } 
    } 
  
    return table[n][0]; 
}

console.log(bell_Number(5)); // Output Bell Number for n=5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
