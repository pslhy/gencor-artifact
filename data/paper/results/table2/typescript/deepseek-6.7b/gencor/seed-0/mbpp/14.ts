
function find_Volume(l: number, b: number, h: number): number {
    if(l <= 0 || b <= 0 || h <= 0){
        throw new Error('Sides must be greater than 0');
    }
    return (1/ 2) * l * b * h;
}

console.log(find_Volume(4, 4, 4)) // example usage

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the volume of a triangular prism.
