function find_Rotations(str: string): number {
    let n = str.length;
    let minRotations = n;
    for (let i = 0; i < n; i++) {
        if (str.slice(i) + str.slice(0, i) === str) {
            minRotations = Math.min(minRotations, n - i);
        }
    }
    return minRotations;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
