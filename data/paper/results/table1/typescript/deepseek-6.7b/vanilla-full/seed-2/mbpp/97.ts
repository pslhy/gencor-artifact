function frequency_lists(list1: number[][]): {[key: number]: number} {
    let dict: {[key: number]: number} = {};
    for(let subList of list1) {
        for(let item of subList) {
            if(item in dict) {
                dict[item]++;
            } else {
                dict[item] = 1;
            }
        }
    }
    return dict;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find frequency of each element in a flattened array of arrays, returned in an object.
