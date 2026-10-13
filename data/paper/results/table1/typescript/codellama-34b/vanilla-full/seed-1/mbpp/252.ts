function convert(numbers: number): [number, number] {
    const [a, b] = numbers.split(',');
    const r = Math.sqrt(a * a + b * b);
    const theta = Math.atan2(b, a);
    return [r, theta];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
