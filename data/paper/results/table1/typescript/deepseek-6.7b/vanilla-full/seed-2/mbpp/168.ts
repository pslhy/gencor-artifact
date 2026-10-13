function frequency(a: number[], x: number): number {
    let count = 0;
    for (let i = 0; i < a.length; i++) {
        if (a[i] === x)
            count++;
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of occurrences of a number in a given array.
