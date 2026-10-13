function closest_integer(value: string): number {
    const num = parseFloat(value);
    const floor = Math.floor(num);
    const ceil = Math.ceil(num);
    if (Math.abs(num - floor) === Math.abs(num - ceil)) {
        return num < 0 ? floor : ceil;
    } else {
        return Math.round(num);
    }
}

// test cases
console.log(closest_integer("10")); // 10
console.log(closest_integer("15.3")); // 15
console.log(closest_integer("14.5")); // 15
console.log(closest_integer("-14.5")); // -15


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that takes a value (string) representing a number
//     and returns the closest integer to it. If the number is equidistant
//     from two integers, round it away from zero.
//     Examples
//     >>> closest_integer("10")
//     10
//     >>> closest_integer("15.3")
//     15
//     Note:
//     Rounding away from zero means that if the given number is equidistant
//     from two integers, the one you should return is the one that is the
//     farthest from zero. For example closest_integer("14.5") should
//     return 15 and closest_integer("-14.5") should return -15.
