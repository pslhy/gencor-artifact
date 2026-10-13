function combinations_colors(l: string[], n: number): string[][] {
    let result = [];
    function helper(l_: string[], n_: number, comb: string[]): void {
        if (n_ == 0) {
            result.push(comb);
            return;
        }
        for (let i = 0; i < l_.length; i++) {
            helper(l_.slice(i + 1), n_ - 1, comb.concat(l_[i].toString().repeat(n_ - comb.length).split('')));
        }
    }
    helper(l, n, []);
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.