function dict_filter(dict: {[key: string]: number}, n: number): {[key: string]: number} {
    let res: {[key: string]: number} = {};
    for (let key in dict) {
        if (dict[key] >= n) {
            res[key] = dict[key];
        }
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an object and integer n and filters the object to only include entries with values greater than or equal to n.
