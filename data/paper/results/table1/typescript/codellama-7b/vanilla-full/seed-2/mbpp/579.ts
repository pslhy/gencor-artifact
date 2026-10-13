function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let output_list = [];
    for (let i = 0; i < test_tup1.length; i++) {
        if (test_tup1[i] !== test_tup2[i]) {
            output_list.push(test_tup1[i]);
        }
    }
    return output_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
