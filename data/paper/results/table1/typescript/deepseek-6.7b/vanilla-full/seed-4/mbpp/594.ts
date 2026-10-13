function diff_even_odd(list1: number[]): number {
    let even: number | null = null;
    let odd: number | null = null;

    for (let num of list1) {
        if (even === null && num % 2 === 0) {
            even = num;
        }
        if (odd === null && num % 2 !== 0) {
            odd = num;
        }
        // Break as soon as both are found
        if (even !== null && odd !== null) {
            break;
        }
    }

    return (even as number) - (odd as number);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
