function count_integer(list1: (number | string | number)[]): number {
    let sum = 0;
    list1.forEach(element => {
        if (Number.isInteger(element)) {
            sum += 1;
        }
    });
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that returns the number of integer elements in a given array.
