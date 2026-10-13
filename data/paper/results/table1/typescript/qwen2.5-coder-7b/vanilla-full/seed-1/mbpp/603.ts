function get_ludic(n: number): number[] { 
    if (n < 2) return [];
    let ludics = [1, 2];
    let nextIndex = 2;
    while (true) {
        let next = ludics[nextIndex] * 2;
        if (next > n) break;
        ludics.push(next);
        nextIndex++;
    }
    return ludics;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
