
function convert(numbers: number): [number, number] {
    const real = numbers.valueOf();
    const imaginary = numbers.valueOf();
    const r = Math.abs(real);
    const radians = Math.atan2(imaginary, real);
    return [r, radians];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
