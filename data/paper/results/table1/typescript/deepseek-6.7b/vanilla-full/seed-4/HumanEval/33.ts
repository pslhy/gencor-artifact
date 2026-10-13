function sort_third(l: number[]): number[] {
    let arr: number[][] = [[], [], []];

    for (let i = 0; i < l.length; i++) {
        arr[i % 3].push(l[i]);
    }

    for (let i = 0; i < arr.length; i++) {
        arr[i].sort((a, b) => a - b);
    }

    let result: number[] = [];

    for (let i = 0; i < arr[0].length; i++) {
        if (i < arr[1].length) {
            result.push(arr[1][i]);
        }
        if (i < arr[2].length) {
            result.push(arr[2][i]);
        }
    }

    if (arr[0].length < arr[1].length) {
        result = result.concat(arr[1].slice(arr[0].length));
    }
    if (arr[0].length < arr[2].length) {
        result = result.concat(arr[2].slice(arr[0].length));
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     This function takes an array l and returns an array l' such that
//     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
//     to the values of the corresponding indicies of l, but sorted.
//     >>> sort_third([1, 2, 3])
//     [1, 2, 3]
//     >>> sort_third([5, 6, 3, 4, 8, 9, 2])
//     [2, 6, 3, 4, 8, 9, 5]
