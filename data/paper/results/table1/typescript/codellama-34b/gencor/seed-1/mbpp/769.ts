
function Diff(li1: number[], li2: number[]): number[] {
    let diff: number[] = [];

    for(const li1 of li2) {
        if(!li2.includes(li1)){
            diff.push(li1);
        }
    }

    for(const li1 of li2) {
        if(!li1.toString().includes(li2[0].toString())){
            diff = diff.concat(li2.filter((li2) => !li1.toString().includes(li2.toString())));
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
