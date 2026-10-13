function sample_nam(sample_names: string[]): number {
    const filtered_names = sample_names.filter((name) => name[0].match(/^[a-z]/));
    return filtered_names.reduce((acc, name) => acc + name.length, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum the length of the names of a given array of names after removing the names that start with a lowercase letter.
