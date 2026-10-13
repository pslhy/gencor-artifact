function bell_number(n: number): number { // Calculate nth Bell number
    let Bell = Array(n + 1).fill(0);
    Bell[0] = 1; // Base case
    for (let i = 1; i <= n; i++) {
        Bell[i] = 0;
        for (let j = 0; j < i; j++) {
            Bell[i] += Bell[j] * Bell[i - 1 - j];
        }
    }
    return Bell[n];
}

function partition_ways(n: number): number { // Calculate number of partitions of n
    let totalWays = 0;
    for (let i = 0; i <= n; i++) {
        totalWays += Math.pow(2, i - 1) * Math.pow(-1, n - i) * Math.pow(bell_number(i), 1);
    }
    return totalWays;
}

// Main function
function main()  : void {
    const n: number = 4; // Example number
    const result: number = partition_ways(n);
    return result.toString() + '\n' + (result == 1 ? "1 way" : result + " ways") + " to partition the set into " + n + " Bell numbers.\n" + "Consequently, there are " + (result == 1 ? "1 part" : result + " parts") + " in the partition.\n" + (result == 1 ? "Each partition consists of " + n + " bell numbers.


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.