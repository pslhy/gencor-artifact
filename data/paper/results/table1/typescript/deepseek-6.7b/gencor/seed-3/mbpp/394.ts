
function check_distinct(test_tup: number[]): boolean {
    let hash_map = new Map();
    for (let i = 0; i < test_tup.length; i++) {
        if(hash_map.has(test_tup[i])) {
            return false;
        }
        hash_map.set(test_tup[i], 1);
    }
    return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if given array contains no duplicates.
