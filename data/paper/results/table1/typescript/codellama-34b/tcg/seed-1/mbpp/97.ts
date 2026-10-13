function frequency_lists(list1: number[][]): {[key: number]: number} {
    const result: {[key: number]: number} = {};
    for (const sublist of list1) {
        for (const element of sublist) {
            if (!result[element]) {
                result[element] = 0;
            }
            result[element]++;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find frequency of each element in a flattened array of arrays, returned in an object.