function combinations_colors(l: string[], n: number): string[][] {
    if (n === 0) return [];
    if (n === 1) return l.map(i => [i]);
    if (l.length === 0) return [];

    let result: string[][] = [];
    for (let i = 0; i < l.length; i++) {
        let rest = combinations_colors(l.slice(i), n - 1);
        rest.forEach(comb => {
            result.push([l[i], ...comb]);
        });
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
