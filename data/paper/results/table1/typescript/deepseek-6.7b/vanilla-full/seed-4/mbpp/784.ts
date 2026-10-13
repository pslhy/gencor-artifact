function mul_even_odd(list1: number[]): number {
    let evenProd = 1;
    let oddProd = 1;
    let flag = 0;
    for (let item of list1) {
        if (item % 2 === 0) {
            evenProd *= item;
            flag = 1;
        } else if (flag === 0) {
            oddProd *= item;
        }
    }
    return evenProd > oddProd ? evenProd : oddProd;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
