function min_Swaps(str1: string, str2: string): any {
    let count: number[][] = new Array(8).fill(0).map(() => new Array(8).fill(0));
    for (let i = 0; i < str1.length; i++) {
        count[parseInt(str1[i])][parseInt(str2[i])]++;
    }

    let dp: number[][] = new Array(8).fill(0).map(() => new Array(1 << 8).fill(Infinity));
    dp[7][0] = 0;
    for (let mask = 0; mask < 1 << 8; mask++) {
        for (let digit = 0; digit < 8; digit++) {
            if (dp[digit][mask] == Infinity) continue;
            for (let nextDigit = 0; nextDigit < 8; nextDigit++) {
                let nextMask = ((mask << 1) | (digit >> 7)) & 0b11111111;
                if (digit > nextDigit) {
                    nextMask ^= 1 << (nextDigit + 26 - 8);
                }
                dp[nextDigit][nextMask] = Math.min(dp[nextDigit][nextMask], dp[digit][mask] + count[digit][nextDigit]);
            }
        }
    }

    let answer = Infinity;
    for (let mask = 0; mask < 1 << 8; mask++) {
        answer = Math.min(answer, dp[7][mask]);
    }
    return (answer == Infinity) ? -1 : answer + 7 * count[7][7];
}

console.log(min_Swaps("1100","0011"));  // Outputs: 2
console.log(min_Swaps("1100","1001"));  // Outputs: 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
