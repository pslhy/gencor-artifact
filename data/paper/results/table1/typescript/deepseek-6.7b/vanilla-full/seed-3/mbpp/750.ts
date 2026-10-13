function add_tuple(test_list: number[], test_tup: [number, number]): number[] {
    let result: number[] = [];
    
    for (let i = 0; i < test_list.length; i++) {
        if(i < test_tup.length) {
            result.push(test_list[i] + test_tup[i]);
        } else {
            result.push(test_list[i]);
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to add the given array to the given array.
