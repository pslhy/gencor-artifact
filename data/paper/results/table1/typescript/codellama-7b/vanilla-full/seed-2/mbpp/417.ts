function group_tuples(Input: string[][]): string[][] {
    return Input.map(arr => arr.slice(0, 1))
}

function findCommonFirstElement(arr: string[][]): string {
    if (arr.length === 0) {
        return "";
    }

    const commonFirstElement = arr[0][0];
    for (let i = 1; i < arr.length; i++) {
        if (commonFirstElement !== arr[i][0]) {
            return "";
        }
    }

    return commonFirstElement;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
