function largest_neg(list1: number[]): number {
    let largestNeg = list1[0];

    for (const num of list1) {
        if (num < 0 && num > largestNeg) {
            largestNeg = num;
        }
    }

    return largestNeg;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest negative number from the given array.
