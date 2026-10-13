function Diff(li1: number[], li2: number[]): number[] {
    let diff: number[] = [];

    for(const li1elem of li1) {
        if (!li2.includes(li1elem)) {
            diff.push(li1elem);
        }
    }

    for(const li2elem of li2) {
        if (!li1.includes(li2elem)) {
            diff.push(li2elem);
        }
    }

    return diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.