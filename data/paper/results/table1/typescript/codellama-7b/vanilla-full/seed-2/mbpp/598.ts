function armstrong_number(number: number): boolean {
    let originalNumber = number;
    let sum = 0;
    while (number > 0) {
        sum += Math.pow(number % 10, 3);
        number = Math.floor(number / 10);
    }
    return sum === originalNumber;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
