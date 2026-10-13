function check_K(test_tup: number[], K: number): boolean {
    return test_tup.includes(K);
}

//You can also use find() method which returns the first element in the array that satisfies the provided testing function.
function check_K_Double_Check(test_tup: number[], K: number): boolean {
    return test_tup.find((item) => item === K) !== undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given arrays contain the k or not.
