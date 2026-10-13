function bell_number(n: number): number { // Calculate the nth Bell number
    if (n === 0) return 1;

    let dp: number[] = new Array(n + 1).fill(0);
    dp[0] = 1;

    for (let i = 1; i <= n; i++) {
        dp[i] = 0;
        for (let j = 0; j < i; j++) {
            dp[i] += Math.pow(2, j) * dp[j];
        }
    }

    return dp[n];
}

function count_partitions(numWays: number): number { // Calculate the number of ways to partition
    // based on the Bell number's properties
    let count = 0;
    let numbers: number[] = [1, 2, 5, 15, 52, 203, 877];

    for (let i = 0; i < numbers.length; i++) {
        if (numbers[i] <= numWays) {
            count++;
        }
    }

    return count;
}

function partition_ways(n: number): number { // Main function to find partition ways
    let ways = bell_number(n);
    return count_partitions(ways);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.