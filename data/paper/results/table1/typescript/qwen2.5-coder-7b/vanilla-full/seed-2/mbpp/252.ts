function convert(numbers: number): [number, number] { // Return type is tuple [r, theta]
    const real = numbers[0];
    const imag = numbers[1];
    const r = Math.sqrt(real * real + imag * imag);
    const theta = Math.atan2(imag, real);
    return [r, theta];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
