function diff_even_odd(list1: number[]): number { 
    let firstEven: number | null = null;
    let firstOdd: number | null = null;

    for (let i = 0; i < list1.length; i++) {
        if (list1[i] % 2 === 0 && firstEven === null) {
            firstEven = list1[i];
        } else if (list1[i] % 2 !== 0 && firstOdd === null) {
            firstOdd = list1[i];
        }
        if (firstEven !== null && firstOdd !== null) {
            break;
        }
    }

    if (firstEven === null || firstOdd === null) {
        throw new Error("Array must contain at least one even and one odd number");
    }

    return firstEven - firstOdd;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
