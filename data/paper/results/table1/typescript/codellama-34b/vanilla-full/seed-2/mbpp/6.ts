function differ_At_One_Bit_Pos(a: number, b: number): boolean {
    let count = 0;
    for (let i = 0; i < 32; i++) {
        const aBit = (a >> i) & 1;
        const bBit = (b >> i) & 1;
        if (aBit !== bBit) {
            count++;
        }
    }
    return count === 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the two numbers differ at one bit position only or not.
