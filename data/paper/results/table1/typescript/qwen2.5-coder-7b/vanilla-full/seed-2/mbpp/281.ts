function all_unique(test_list: number[]): boolean { 
    let count_dict: Map<number, number> = new Map();
    for (let num of test_list) {
        if (count_dict.has(num)) {
            return false; // Element is already in the dictionary, not unique
        } else {
            count_dict.set(num, 1);
        }
    }
    return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if the elements of a given array are unique or not.
