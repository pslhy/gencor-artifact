function check_K(test_tup: number[], K: number): boolean {
    const tup_length = test_tup.length;
    for (let i = 0; i < tup_length; i++) {
        if (test_tup[i] === K) {
            return true;
        }
    }
    return false;
}

function check_K_2(test_tup: number[], K: number): boolean {
    return test_tup.includes(K);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given arrays contain the k or not.
