function round_and_sum(list1: (number | number)[]): number {
    let sum = 0
    for (var i in list1) {
        sum += Math.round(list1[i]);
    }
    return sum * list1.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to round every number of a given array of numbers and print the total sum multiplied by the length of the array.
