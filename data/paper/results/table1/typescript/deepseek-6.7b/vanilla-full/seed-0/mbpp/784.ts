function mul_even_odd(list1: number[]): number {
    let even = 0;
    let odd = 0;
    for (let i = 0; i < list1.length; i++) {
        if (list1[i] % 2 == 0) {
            even = list1[i];
            break;
        }
    }
    for (let i = 0; i < list1.length; i++) {
        if (list1[i] % 2 != 0) {
            odd = list1[i];
            break;
        }
    }
    return even * odd;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
