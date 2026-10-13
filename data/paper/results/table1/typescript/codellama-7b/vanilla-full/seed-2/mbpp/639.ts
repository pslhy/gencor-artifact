function sample_nam(sample_names: string[]): number {
    let result = 0;
    for (const name of sample_names) {
        if (name[0].toUpperCase() !== name[0]) continue;
        result += name.length;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum the length of the names of a given array of names after removing the names that start with a lowercase letter.
