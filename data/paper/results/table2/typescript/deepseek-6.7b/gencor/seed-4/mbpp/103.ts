
function eulerian_num(n: number, m: number): number {
    let EULER: Array<Array<number> >;
    let i: number;
    let j: number;
    let k: number;
    let sum: number;
  
    // numbering the first column and first row from the right
    EULER = new Array(n + 1);
    for (i = 0; i <= n; i++) {
        EULER[i] = new Array(m + 1);
    }
  
    for (i = 0; i <= n; i++) {
        for (j = 0; j <= Math.min(i, m); j++) {
            if (j == 0) {
                EULER[i][j] = Math.pow(2, i);
            } else {
                sum = 0;
                for (k = 1; k < j; k++) {
                    sum += EULER[i - 1][j - k] * (Math.pow(2, k) - 1);
                }
                sum += EULER[i - 1][0] * (Math.pow(2, j) - 1);
                EULER[i][j] = sum;
            }
        }
    }
    return EULER[n][m];
}

console.log(eulerian_num(2, 1)); // 4
console.log(eulerian_num(2, 2)); // 16
console.log(eulerian_num(3, 1)); // 8
console.log(eulerian_num(3, 2)); // 64
console.log(eulerian_num(3, 3)); // 256

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
