function test_duplicate(arraynums: number[]): boolean {
    const numSet = new Set<number>();
    for (let num of arraynums) {
        if (numSet.has(num)) {
            return true
        }
        numSet.add(num);
    }

    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether a given array of integers contains any duplicate element.
