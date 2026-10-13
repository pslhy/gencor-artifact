function lps(str: string): number {
   let n = str.length;
   let L = Array(n).fill(0).map(() => Array(n).fill(0));
   let i, j;

   for (i = 0; i < n; i++) {
       L[i][i] = 1;
   }

   for (i = 0; i < n - 1; i++) {
       if (str[i] == str[i + 1]) {
           L[i][i + 1] = 2;
       } else {
           L[i][i + 1] = Math.max(L[i][i], L[i + 1][i + 1]);
       }
   }

   for (i = 0; i < n - 2; i++) {
       j = i + 2;
       while (j < n) {
           if (str[i] == str[j]) {
               L[i][j] = L[i + 1][j - 1] + 1;
           } else {
               L[i][j] = Math.max(L[i + 1][j], L[i][j - 1]);
           }
           j++;
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
