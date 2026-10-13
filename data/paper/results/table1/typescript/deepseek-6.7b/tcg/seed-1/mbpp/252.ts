function convert(numbers: number): [number, number] {
    const real = numbers.toString().split('+')[0].split(' ').join('');
    const imag = numbers.toString().split('+')[1].slice(0, -1);
    const r = Math.sqrt(Math.pow(parseFloat(real), 2) + Math.pow(parseFloat(imag), 2));
    const theta = Math.atan2(parseFloat(imag), parseFloat(real));
    return [r, theta];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.