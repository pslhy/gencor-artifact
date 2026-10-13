function unique(l: number[]): number[] {
    const set = new Set(l);
    const result: number[] = [];
    for (const elem of set) {
        result.push(elem);
    }
    return result;
}

const l = [5, 3, 5, 2, 3, 3, 9, 0, 123];
console.log(unique(l));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return sorted unique elements in an array
//     >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
//     [0, 2, 3, 5, 9, 123]
