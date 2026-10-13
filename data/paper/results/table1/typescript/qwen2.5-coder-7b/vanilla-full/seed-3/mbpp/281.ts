function all_unique(test_list: number[]): boolean { 
    let traversal: number = 0;
    while (traversal < test_list.length) {
        let inner_traversal: number = traversal + 1;
        while (inner_traversal < test_list.length) {
            if (test_list[traversal] === test_list[inner_traversal]) {
                return false;
            }
            inner_traversal += 1;
        }
        traversal += 1;
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if the elements of a given array are unique or not.
