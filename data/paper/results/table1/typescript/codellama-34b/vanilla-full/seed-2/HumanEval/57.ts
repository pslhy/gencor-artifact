function monotonic(l: number[]): boolean {
    let isIncreasing = true;
    let isDecreasing = true;

    for (let i = 0; i < l.length - 1; i++) {
        if (l[i] < l[i + 1]) {
            isDecreasing = false;
        } else if (l[i] > l[i + 1]) {
            isIncreasing = false;
        }
    }

    return isIncreasing || isDecreasing;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return true is array elements are monotonically increasing or decreasing.
//     >>> monotonic([1, 2, 4, 20])
//     true
//     >>> monotonic([1, 20, 4, 10])
//     false
//     >>> monotonic([4, 1, 0, -10])
//     true
