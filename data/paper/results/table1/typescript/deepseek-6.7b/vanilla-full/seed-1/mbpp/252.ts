function convert(numbers: number): [number, number] {
    const real = numbers[0];
    const imag = numbers[1];
    const magnitude = Math.sqrt(real*real + imag*imag);
    const angle = Math.atan2(imag, real);

    return [magnitude, angle];
}

const complexNum = [3, 4];
const polarCoordinates = convert(complexNum);

console.log(`Magnitude: ${polarCoordinates[0]}, Angle: ${polarCoordinates[1]}`);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
