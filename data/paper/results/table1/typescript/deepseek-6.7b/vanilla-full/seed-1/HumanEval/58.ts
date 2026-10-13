function common(l1: number[], l2: number[]): number[] {
    l1.sort((a, b) => a - b);
    l2.sort((a, b) => a - b);

    const result: number[] = [];
    let i: number = 0;
    let j: number = 0;

    while (i < l1.length && j < l2.length) {
        if (l1[i] === l2[j]) {
            if (result.length === 0 || result[result.length - 1] !== l1[i]) {
                result.push(l1[i]);
            }
            i++;
            j++;
        } 
        else if (l1[i] < l2[j]) {
            i++;
        } 
        else {
            j++;
        }
    }
    return result;
}

console.log(common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]));
console.log(common([5, 3, 2, 8], [3, 2]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return sorted unique common elements for two arrays.
//     >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
//     [1, 5, 653]
//     >>> common([5, 3, 2, 8], [3, 2])
//     [2, 3]
