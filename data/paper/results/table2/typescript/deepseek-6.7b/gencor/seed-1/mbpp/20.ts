
function is_woodall(x: number): boolean {
    let binary: string = x.toString(2);
    let ones: number = (binary.match(/1/g) || [] as any).length;
    let twos: number = (binary.match(/11/g) || [] as any).length;
    return ones === 2 * twos;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
