function sum_even_and_even_index(arr: number[]): number {
    let sum = 0;
    for(let i = 0; i < arr.length; i += 2) {
        if(arr[i] % 2 === 0) {  // checks if number is even
            sum += arr[i];
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even numbers at even positions of an array.
