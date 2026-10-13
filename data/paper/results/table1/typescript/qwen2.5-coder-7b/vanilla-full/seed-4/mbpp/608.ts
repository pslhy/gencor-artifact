function bell_Number(n: number): number { 
    // declare a 2d array for storing previous bell number
    let table = Array.from({ length: n + 1 }, () => Array(n + 1).fill(0));
  
    // assign 1st row as {0:1, 1:1, 2:1, ....}
    for (let i = 0; i <= n; i++) 
        table[0][i] = 0; 
    table[1][0] = 1; 
  
    // fill the table in bottom up manner
    for (let i = 2; i <= n; i++) {
        // To find nth Bell number we calculate sum of (i-1)th Bell number and i-1 th numbers of (i-1)th row
        table[i][0] = table[i - 1][i - 1]; 
        for (let j = 1; j <= i; j++) 
            table[i][j] = table[i - 1][j - 1] + table[i][j - 1]; 
    } 
  
    // last entry in last row of table gives the nth Bell Number
    return table[n][0]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
