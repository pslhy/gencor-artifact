function bell_number(n: number): number { 
    // Initialize a 2D array for Bell numbers 
    let bell = Array.from({ length: n + 1 }, () => Array(n + 1).fill(0)); 
  
    // Base case 
    bell[0][0] = 1; 
  
    // Fill the Bell numbers table 
    for (let i = 1; i <= n; i++) { 
        bell[i][0] = bell[i - 1][i - 1]; 
  
        for (let j = 1; j <= i; j++) {
            bell[i][j] = bell[i - 1][j - 1] + bell[i][j - 1]; 
        } 
    } 
  
    return bell[n][0]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
