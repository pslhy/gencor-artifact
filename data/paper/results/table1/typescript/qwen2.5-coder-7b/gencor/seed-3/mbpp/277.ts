
function dict_filter(dict: {[key: string]: number}, n: number): {[key: string]: number} {
    return Object.keys(dict).reduce((acc: {[key: string]: number}, key: string) => {
        if (dict[key] >= n) {
            acc[key] = dict[key];
        }
        return acc;
    }, {});
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an object and integer n and filters the object to only include entries with values greater than or equal to n.
