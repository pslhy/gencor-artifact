function min_k(test_list: [string, number][], K: number): [string, number][] {
    let output: [string, number][] = [];
    for (let i = 0; i < K; i++) {
        let min_value = Infinity;
        let min_key: string | undefined = undefined;
        for (const [key, value] of test_list) {
            if (value < min_value) {
                min_value = value;
                min_key = key;
            }
        }
        if (min_key !== undefined) {
            output.push([min_key, min_value]);
        }
    }
    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases
