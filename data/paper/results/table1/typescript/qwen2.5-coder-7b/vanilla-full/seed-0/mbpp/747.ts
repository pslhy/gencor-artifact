function lcs_of_three(X: string, Y: string, Z: string): number { 
    let m = X.length; 
    let n = Y.length; 
    let o = Z.length; 

    let lcsuff = Array.from({ length: m + 1 }, () => Array(n + 1).fill(0)); 

    let result = 0; 

    for (let i = 1; i <= m; i++) { 
        for (let j = 1; j <= n; j++) { 
            for (let k = 1; k <= o; k++) { 
                if (X[i - 1] == Y[j - 1] && Y[j - 1] == Z[k - 1]) { 
                    lcsuff[i][j] = lcsuff[i - 1][j - 1] + 1; 
                    result = Math.max(result, lcsuff[i][j]); 
                } else { 
                    lcsuff[i][j] = 0; 
                } 
            } 
        } 
    } 
    
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
