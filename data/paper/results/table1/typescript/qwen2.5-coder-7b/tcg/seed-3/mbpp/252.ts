function convert(numbers: number): [number, number] {
    const real = numbers;
    const imag = numbers;
    const magnitude = Math.sqrt(real * real + imag * imag);
    const angle = Math.atan2(imag, real);
    return [magnitude, angle];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.