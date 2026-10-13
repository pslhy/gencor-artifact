function armstrong_number(number: number): boolean { 
    let temp: number = number; 
    let sum = 0; 
    let n = number.toString().length; 
    while (temp > 0) { 
        let remainder = temp % 10; 
        sum += Math.pow(remainder, n); 
        temp = Math.floor(temp / 10); 
    } 
    return number === sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.