function sample_nam(sample_names: string[]): number {
    let sum_name_length = 0;
    for (let i = 0; i < sample_names.length; i++) {
        if (sample_names[i][0] !== sample_names[i][0].toLowerCase()) {
            sum_name_length += sample_names[i].length;
        }
    }
    return sum_name_length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum the length of the names of a given array of names after removing the names that start with a lowercase letter.
