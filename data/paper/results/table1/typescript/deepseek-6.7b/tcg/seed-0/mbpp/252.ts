function convert(numbers: number): [number, number] {
    const real = numbers.toString().split('+')[0].split('i')[0];
    const imag = numbers.toString().split('+')[1].split('i')[0];

    const r = Math.sqrt(Number(real) ** 2 + Number(imag) ** 2);
    const theta = Math.atan2(Number(imag), Number(real));

    return [r, theta];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.