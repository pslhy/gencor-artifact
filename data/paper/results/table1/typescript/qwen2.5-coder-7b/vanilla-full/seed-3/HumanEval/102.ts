function choose_num(x: number, y: number): number {
    if (y < x) return -1;
    if (y % 2 === 0) return y;
    if ((y - 1) >= x) return y - 1;
    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     This function takes two positive numbers x and y and returns the
//     biggest even integer number that is in the range [x, y] inclusive. If
//     there's no such number, then the function should return -1.
//     For example:
//     >>> choose_num(12, 15)
//     14
//     >>> choose_num(13, 12)
//     -1
