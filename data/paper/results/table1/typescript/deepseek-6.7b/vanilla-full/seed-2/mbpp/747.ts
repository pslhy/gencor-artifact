function lcs_of_three(X: string, Y: string, Z: string): number {
    let m = X.length, n = Y.length, p = Z.length;

    let lookup = new Array(m+1);
    for(let i = 0; i <= m; i++)
    {
        lookup[i] = new Array(n+1);
        for(let j=0; j <= n; j++)
        {
            lookup[i][j] = new Array(p+1).fill(0);
        }
    }

    for(let i=1; i<=m; i++)
    {
        for(let j=1; j<=n; j++)
        {
            for(let k=1; k<=p; k++)
            {
                if (X[i-1] == Y[j-1] && X[i-1] == Z[k-1])
                    lookup[i][j][k] = lookup[i-1][j-1][k-1] + 1;
                else
                    lookup[i][j][k] = Math.max(Math.max(lookup[i-1][j][k], lookup[i][j-1][k]), lookup[i][j][k-1]);
            }
        }
    }

    return lookup[m][n][p];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
