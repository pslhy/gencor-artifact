function convert(numbers: number): [number, number] {
    let real = numbers.valueOf();
    let imaginary = 0;
    if (numbers.toString().includes("i")) {
        real = parseFloat(numbers.toString().split("i")[0])
        imaginary = parseFloat(numbers.toString().split("i")[1])
    }
    if (real.toString().includes("+")) {
        real = parseFloat(real.toString().split("+")[0])
        imaginary += parseFloat(real.toString().split("+")[1])
    }
    if (imaginary.toString().includes("-")) {
        imaginary = -parseFloat(imaginary.toString().split("-")[1])
    }
    return [Math.sqrt(real*real + imaginary*imaginary), Math.atan2(imaginary, real)]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.