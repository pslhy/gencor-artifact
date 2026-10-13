function frequency_lists(list1: number[][]): {[key: number]: number} {
    let output: {[key: number]: number} = {};
    list1.forEach((array) => {
        array.forEach((element) => {
            if (output[element]) {
                output[element]++;
            } else {
                output[element] = 1;
            }
        });
    });
    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find frequency of each element in a flattened array of arrays, returned in an object.
