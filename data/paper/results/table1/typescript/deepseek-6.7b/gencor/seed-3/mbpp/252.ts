
function convert(numbers: number): [number, number] {
    const real = numbers.toString().split('+')[0].replace('i', '');
    const imaginary = numbers.toString().split('+')[1].replace('i', '');

    const r = Math.sqrt(Math.pow(Number(real), 2) + Math.pow(Number(imaginary), 2));
    const theta = Math.atan2(Number(imaginary), Number(real));

    return [r, theta];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
