function combinations_colors(l: string[], n: number): string[][] {
    if (n === 0) {
        return [[]];
    }
    if (l.length === 0) {
        return [];
    }
    const result: string[][] = [];
    for (const a of combinations_colors(l.slice(1), n-1)) {
        result.push([l[0], ...a]);
    }
    for (const a of combinations_colors(l.slice(1), n)) {
        result.push(a);
    }
    return result;
}

const arr = ['red', 'blue', 'green'];
const n = 2;
console.log(combinations_colors(arr, n));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
