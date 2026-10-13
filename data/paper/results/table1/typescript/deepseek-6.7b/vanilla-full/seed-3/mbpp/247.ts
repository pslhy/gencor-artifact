function lps(str: string): number {
    let n = str.length;
    let L: number[][] = [];
  
    // Table for storing results of subproblems
    for (let i = 0; i < n; i++) {
        L.push([]);
        for (let j = 0; j < n; j++) {
            L[i][j] = 0;
        }
    }
  
    // Strings of length 1 are palindrome of length 1
    for (let i = 0; i < n; i++) {
        L[i][i] = 1;
    }
  
    for (let cl = 2; cl <= n; cl++) {
        for (let i = 0; i < n - cl + 1; i++) {
            let j = i + cl - 1;
            if (str.charAt(i) == str.charAt(j) && cl == 2) {
                L[i][j] = 2;
            } else if (str.charAt(i) == str.charAt(j)) {
                L[i][j] = L[i + 1][j - 1] + 2;
            } else {
                L[i][j] = Math.max(L[i][j - 1], L[i + 1][j]);
            }
        }
    }
  
    return L[0][n - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the length of the longest palindromic subsequence in the given string.
