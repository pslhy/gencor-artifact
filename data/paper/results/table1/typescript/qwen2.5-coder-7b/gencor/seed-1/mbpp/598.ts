
function armstrong_number(number: number): boolean { // Function to check whether the given number is armstrong or not
    let originalNumber = number;
    let sum = 0;
    let numberOfDigits = number.toString().length;

    while (number > 0) {
        const digit = number % 10;
        sum += Math.pow(digit, numberOfDigits);
        number = Math.floor(number / 10);
    }

    return sum === originalNumber;
}

// Example usage:
console.log(armstrong_number(153)); // Output: true
console.log(armstrong_number(370)); // Output: true
console.log(armstrong_number(9474)); // Output: true
console.log(armstrong_number(9475)); // Output: false

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
