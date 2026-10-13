
function is_woodall(x: number): boolean {
    let b = x.toString(2).split('').map(Number).reverse();
    let sum = b.reduce((accumulator: number, currentValue: number, currentIndex: number) => {
        return accumulator + (currentValue * Math.pow(2, currentIndex));
    }, 0);
    return sum === x;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
