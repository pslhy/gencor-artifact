function diff_even_odd(list1: number[]): number { 
    let firstEven: number | null = null;
    let firstOdd: number | null = null;

    for (const num of list1) {
        if (num % 2 === 0 && firstEven === null) {
            firstEven = num;
        } else if (num % 2 !== 0 && firstOdd === null) {
            firstOdd = num;
        }
        if (firstEven !== null && firstOdd !== null) {
            break;
        }
    }

    if (firstEven !== null && firstOdd !== null) {
        return firstEven - firstOdd;
    } else {
        throw new Error("Array must contain at least one even and one odd number");
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
