function get_ludic(n: number): number[] {
    const ludicNumbers: number[] = [];
    for (let i = 1; i <= n; i++) {
        if (ludicNumbers.includes(i)) continue;
        ludicNumbers.push(i);
        ludicNumbers.push(...ludicNumbers.map((x) => x + i));
    }
    return ludicNumbers;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
