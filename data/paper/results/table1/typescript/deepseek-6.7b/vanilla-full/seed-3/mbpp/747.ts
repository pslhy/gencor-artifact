function lcs_of_three(X: string, Y: string, Z: string): number {
    let m = X.length;
    let n = Y.length;
    let o = Z.length;
  
    let L = Array.from(Array(m+1),(_:any)=>Array(n+1).fill(0).map(()=>Array(o+1).fill(0)));
  
    for (let i = 0; i <= m; i++) {
        for (let j = 0; j <= n; j++) {
            for (let k = 0; k <= o; k++) {
                if (i === 0 || j === 0 || k === 0)
                    L[i][j][k] = 0;
  
                else if (X[i - 1] == Y[j - 1] && X[i - 1] == Z[k - 1])
                    L[i][j][k] = L[i - 1][j - 1][k - 1] + 1;
  
                else
                    L[i][j][k] = Math.max(Math.max(L[i - 1][j][k],
                                                   L[i][j - 1][k]),
                                          L[i][j][k - 1]);
            }
        }
    }
  
    return L[m][n][o];
}
  
// Test the function
let X = "AGGT12";
let Y = "12TXAYB";
let Z = "12XBA";
  
console.log("Length of LCS is " + lcs_of_three(X, Y, Z));  // Outputs: Length of LCS is 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
