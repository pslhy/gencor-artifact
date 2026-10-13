function dict_filter(dict: {[key: string]: number}, n: number): {[key: string]: number} {
    const filtered_dict: {[key: string]: number} = {};
    for (const key in dict) {
        if (dict[key] >= n) {
            filtered_dict[key] = dict[key];
        }
    }
    return filtered_dict;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an object and integer n and filters the object to only include entries with values greater than or equal to n.
