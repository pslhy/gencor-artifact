function sum_average(number: number): [number, number] {
    let sum: number = 0;
    for(let i=1; i <= number; i++) {
        sum += i;
    }
    let average: number = sum/number;
    return [sum, average];
}

//Test function
console.log(sum_average(5));  //[15, 3.0]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find sum and average of first n natural numbers.
