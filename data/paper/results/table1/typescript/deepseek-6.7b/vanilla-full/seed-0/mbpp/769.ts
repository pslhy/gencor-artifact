function Diff(li1: number[], li2: number[]): number[] {
    const output = [];
    let map = {};
    for (let i=0; i<li2.length; i++) {
        map[li2[i]] = true;
    }
    for (let i=0; i<li1.length; i++) {
        if (!map[li1[i]]) {
            output.push(li1[i]);
        }
    }
    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.
