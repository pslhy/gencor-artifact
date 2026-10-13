
function power_base_sum(base: number, power: number): number {
    let num: number = base ** power;
    let str: number = Math.floor(num);
    let digits: number = str + (str > 0 ? Math.log2(num * 10) / Math.log2(10) : 1);
    return digits;
}

function power_base_sum_accurate(base: number, power: number): number {
    let num: number = base ** power;
    let str: number = Math.floor(num);
    let sum: number = 0;
    while (str > 0) {
        sum += str % 10;
        str = Math.floor(str / 10);
    }
    return sum;
}

function power_base_sum_accurate_log10(base: number, power: number): number {
    let num: number = base ** power;
    let digits: number

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
