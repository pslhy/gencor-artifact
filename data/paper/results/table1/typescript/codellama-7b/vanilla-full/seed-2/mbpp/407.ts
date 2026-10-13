function rearrange_bigger(n: number): any {
    let numString = n.toString();
    let digits = numString.split('').map(Number);
    let sortedDigits = digits.sort((a, b) => a - b);
    let result = sortedDigits.join('');
    return parseInt(result);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
