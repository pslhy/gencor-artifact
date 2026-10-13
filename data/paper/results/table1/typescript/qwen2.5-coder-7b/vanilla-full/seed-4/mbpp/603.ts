function get_ludic(n: number): number[] { 
    let ludics: number[] = [];
    let remainders: number[] = [];
    for (let i = 0; i <= n; i++) {
        remainders.push(i);
    }
    let index = 1;
    while (remainders.length > 0) {
        let current = remainders[index];
        ludics.push(current);
        remainders = remainders.filter(remaider => remaider % current !== 0);
        index++;
    }
    return ludics;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
