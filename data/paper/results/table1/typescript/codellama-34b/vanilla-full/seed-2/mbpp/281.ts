function all_unique(test_list: number[]): boolean {
    let set = new Set();
    for (let element of test_list) {
        if (set.has(element)) {
            return false;
        } else {
            set.add(element);
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
