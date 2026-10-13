function max_Abs_Diff(arr: number[]): number {
    let maxDiff = 0;

    for(const [i, x] of arr.entries()) {
        for(const [j, y] of arr.slice(i + 1).entries()) {
            const diff = Math.abs(x - y);
            if (diff > maxDiff) {
                maxDiff = diff;
            }
        }
    }

    return maxDiff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the maximum difference between any two elements in a given array.
