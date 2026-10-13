function armstrong_number(number: number): boolean {
    let num: number = number; 
    let len: number = num.toString().length;
    let sum: number = 0;
    let temp: number = num;

    while(temp > 0) {
        let digit: number = temp % 10;
        sum += Math.pow(digit,len);
        temp = Math.floor(temp / 10);
    }

    return num === sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
