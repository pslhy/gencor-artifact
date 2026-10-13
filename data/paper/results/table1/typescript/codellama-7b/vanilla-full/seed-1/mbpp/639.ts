function sample_nam(sample_names: string[]): number {
    let sum = 0;
    for (let i = 0; i < sample_names.length; i++) {
        if (sample_names[i].slice(0).toLocaleLowerCase() !== sample_names[i].slice(0)) {
            sum += sample_names[i].length;
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum the length of the names of a given array of names after removing the names that start with a lowercase letter.
