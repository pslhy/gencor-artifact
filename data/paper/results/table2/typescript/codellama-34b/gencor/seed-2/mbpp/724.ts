
function power_base_sum(base: number, power: number): number {
    let result = 0;
    for (let i = 0; i < power; i++) {
        let baseStr = base.toString();
        for (let j = 0; j < baseStr.length; j++) {
            result += parseInt(baseStr.charAt(j));
        }
        baseStr = result.toString();
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
