function union_elements(test_tup1: number[], test_tup2: number[]): number[] {
    let result: number[] = []
    for (let i = 0; i < test_tup1.length; i++) {
        if (result.indexOf(test_tup1[i]) === -1) {
            result.push(test_tup1[i]);
        }
    }
    for (let i = 0; i < test_tup2.length; i++) {
        if (result.indexOf(test_tup2[i]) === -1) {
            result.push(test_tup2[i]);
        }
    }
    return result.sort((a, b) => a - b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.
