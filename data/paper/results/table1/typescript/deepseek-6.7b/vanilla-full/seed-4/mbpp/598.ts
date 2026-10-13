function armstrong_number(number: number): boolean {
    let num = number;
    let sum = 0;
    let temp = num;
    let n = temp.toString().length;
    
    while(temp > 0)  {
        let remainder = temp % 10;
        sum += Math.pow(remainder, n);
        temp = parseInt(temp.toString().substring(0, temp.toString().length - 1));
    }

    return sum == num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
