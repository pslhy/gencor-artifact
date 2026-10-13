function max_Abs_Diff(arr: number[]): number {
    let arrLen = arr.length;
    if (arrLen < 2) {
        throw new Error("Array should have at least two elements");
    }

    let max_diff = Math.abs(arr[1] - arr[0]);
    let min_element = Math.min(arr[0], arr[1]);

    for (let i = 2; i < arrLen; i++) {
        let diff = Math.abs(arr[i] - min_element);
        max_diff = Math.max(max_diff, diff);
        min_element = Math.min(min_element, arr[i]);
    }

    return max_diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the maximum difference between any two elements in a given array.
