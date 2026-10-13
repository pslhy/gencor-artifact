function lps(str: string): number { 
    const n = str.length;
    const L: number[][] = Array.from({ length: n }, () => Array(n).fill(0));

    for (let i = 0; i < n; i++) { 
        L[i][i] = 1; 
    }

    for (let cl = 2; cl <= n; cl++) { 
        for (let i = 0; i < n - cl + 1; i++) { 
            const j = i + cl - 1; 
            if (str[i] === str[j] && cl === 2) { 
                L[i][j] = 2; 
            } else if (str[i] === str[j]) { 
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
