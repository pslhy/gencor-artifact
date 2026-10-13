function perfect_squares(a: number, b: number): number[] {
    const squares: number[] = [];

    for(const x = a * a; x <= b * b; x += 1) {
        if (Math.sqrt(x) === Math.floor(Math.sqrt(x))) {
            squares.push(Math.sqrt(x));
        }
    }

    return squares


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find perfect squares between two given numbers.
