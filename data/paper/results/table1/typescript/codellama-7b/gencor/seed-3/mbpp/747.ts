
function lcs_of_three(X: string, Y: string, Z: string): number {
  let dp: number[][] = [];
  for (let i = 0; i < X.length; i++) {
    dp.push([]);
    for (let j = 0; j < Y.length; j++) {
      dp[i].push([] as number[][] | null | undefined[][] | null | undefined[][][] | null | undefined[][][][] | undefined[
      ] | null | undefined[][] | null | undefined[][][] | null | undefined [][] | undefined [
        ][
      ] | null | undefined | undefined[] | null | undefined | undefined[][] | null | undefined[][][] | null | undefined[][]
        [] | null | undefined | undefined[] | null | undefined[][] | null | undefined[][][] | null | undefined[][][][]
        | null | undefined | undefined | undefined[] | null | undefined | undefined[
      ][
        ] | null | undefined | undefined | undefined[] | null | undefined | undefined[][] | null | undefined[][][] | null
        | undefined[][][][] | undefined | undefined[] | null | undefined | undefined[
        ] | null | undefined | undefined[] | null | undefined | undefined[][] | null | undefined[][][] | null |
        undefined[][][] | null | undefined | undefined[] | null | undefined[][] | null | undefined[][][] | null |
        undefined[][][][] | undefined | undefined[] | null | undefined | undefined[
      ][
        ] | null | undefined | undefined | undefined[
        ] | null | undefined | undefined[][] | null | undefined[][][] | null | undefined[][][] | null |
        undefined[][][] | undefined | undefined[] | null | undefined | undefined[
        ] | null | undefined | undefined[] | null | undefined[][] | null | undefined[][] | null |
        undefined[][][] | undefined[][][][] | undefined | undefined | undefined[][] | null | undefined[][][] | null |
        undefined[][][][] | undefined | undefined[] | null | undefined | undefined[][] | null | undefined[][] | null |
        undefined[][][] | undefined
     

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
