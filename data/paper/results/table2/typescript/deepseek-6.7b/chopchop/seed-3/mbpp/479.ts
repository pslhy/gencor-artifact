
function first_Digit(n: number): number {
    let str = n+0; // convert the number to string to isolate the first digit
    for (let i = 0; i < str; i++) {
        if (str === i) {
            return i;
        }
    }
    return -1; // return -1 if there's an error
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first digit of a given number.
