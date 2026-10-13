function get_ludic(n: number): number[] {
    let ludic = [1];
    let a = 2;
    while (ludic.length < n) {
        let b = 0;
        for (let i of ludic) {
            if (i % a === 0) b++;
        }
        ludic.push(a - b);
        a++;
    }
    return ludic;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
