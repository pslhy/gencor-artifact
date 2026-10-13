function largest_neg(list1: number[]): number {
    let largestNegative = list1[0];

    for (let elem of list1) {
        if (elem < 0 && elem > largestNegative) {
            largestNegative = elem;
        }
    }

    return largestNegative;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest negative number from the given array.
