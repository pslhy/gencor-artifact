function get_ludic(n: number): number[] {
    const ludic: number[] = [2];
    const seen: Set<number> = new Set();

    for (let i = 3; i <= n; i += 2) {
        if (seen.has(i)) continue;
        seen.add(i);
        ludic.push(i);
        for (let j = i; j <= n; j += i) {
            seen.add(j);
        }
    }

    return ludic;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
