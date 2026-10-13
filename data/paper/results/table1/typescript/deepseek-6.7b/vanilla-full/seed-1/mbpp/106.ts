function add_lists(test_list: number[], test_tup: [number, number]): [number, number, number, number, number] {
    let res: [number, number, number, number, number] = [0, 0, 0, 0, 0];
    let i: number = 0;

    for(i=0; i<test_list.length; i++) {
        res[i] = test_list[i];
    }

    for(i=0; i<test_tup.length; i++) {
        res[i + 4] = test_tup[i];
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to append the given array to the given arrays.
