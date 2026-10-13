function find_Max_Num(arr: number[]): number {
    let max_Num = 0;
    let perm_Arr = permutation(arr);
    for (const num of perm_Arr) {
        if (num > max_Num) {
            max_Num = num;
        }
    }
    return max_Num;
}

function permutation(arr: number[]): number[][] {
    if (arr.length == 1) {
        return [arr];
    }
    let result: number[][] = [];
    for (let i = 0; i < arr.length; i++) {
        let rem_Arr = arr.slice(0, i).concat(arr.slice(i + 1));
        let nested_perm = permutation(rem_Arr);
        for (const c of nested_perm) {
            result.push([arr[i]].concat(c));
        }
    }
    return result;
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
