function add_lists(test_list: number[], test_tup: [number, number]): [number, number, number, number, number] {
    let result: [number, number, number, number, number] = [0, 0, 0, 0, 0];
    if(test_list.length == test_tup.length){
        for(let i = 0; i< test_list.length; i++){
            result[i] = test_list[i] + test_tup[i];
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to append the given array to the given arrays.
