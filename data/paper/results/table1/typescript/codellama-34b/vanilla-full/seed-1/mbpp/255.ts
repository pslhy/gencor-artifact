function combinations_colors(l: string[], n: number): string[][] {
    const result: string[][] = [];
    const len = l.length;

    const generate_combinations = (left: number[], curr: number[], index: number, depth: number): void => {
        for (let i = index; i < len - (depth - 1); i++) {
            curr[depth] = l[i];
            if (depth < n - 1) {
                generate_combinations(left, curr, i + 1, depth + 1);
            } else {
                result.push(curr.slice());
            }
        }
    };

    generate_combinations([], [], 0, 0);
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
