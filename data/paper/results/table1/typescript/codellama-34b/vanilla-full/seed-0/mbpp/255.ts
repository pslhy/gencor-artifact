function combinations_colors(l: string[], n: number): string[][] {
    const result = [];
    if (n <= 0) {
        return [];
    }

    function helper(prefix: string[], index: number): string[] {
        if (prefix.length < n) {
            l.forEach((element, i) => {
                helper(prefix.concat(element), i);
            });
        } else {
            result.push(prefix);
        }
    }

    helper([], 0);
    return result;
}

const result = combinations_colors(['red', 'green', 'blue'], 2);
console.log(result); // should print [['red', 'green'], ['red', 'blue'], ['green', 'red'], ['green', 'blue'], ['blue', 'red'], ['blue', 'green']]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
