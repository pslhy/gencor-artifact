function round_and_sum(list1: (number | number)[]): number {
    const rounded = list1.map(Number.parseFloat.toString(  ) 
    .split(  ""  ) 
    .map(Number   ) 
    .map(Math.round   ) 
    .join(  ""  ) 
    .split(  ""  ) 
    .map(Number   ) 
    .reduce((a: number, b: number) => a + b, 0   ) 
    .valueOf(  ) 
    .toFixed(2   ) 

    .split(  ""  ) 
    .filter((char: string) => !Number.isNaN(Number.parseInt(char)))
    .map(Number)
    .reduce((a: number, b: number) => a * b, 1)
    .valueOf()
 
    .toFixed(2)
    .slice(0,


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to round every number of a given array of numbers and print the total sum multiplied by the length of the array.