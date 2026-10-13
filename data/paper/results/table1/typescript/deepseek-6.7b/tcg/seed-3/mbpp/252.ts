function convert(numbers: number): [number, number] {
    const real = numbers.toString().split("+")[0];
    const imag = numbers.toString().split("+")[1];
    const magnitude = Math.sqrt(real.length > 0 ? Math.pow(parseInt(real.split("i")[0]), 2) : 0 + Math.pow(parseInt(imag.split("i")[0]), 2));
    const angle = Math.atan2(parseInt(imag.split("i")[0]), parseInt(real.split("i")[0]));
    return [magnitude, angle];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.