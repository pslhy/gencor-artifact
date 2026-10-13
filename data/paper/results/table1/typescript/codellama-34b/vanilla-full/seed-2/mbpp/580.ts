function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    let output = [];
    for (let i = 0; i < test_tuple.length; i++) {
        const element = test_tuple[i];
        if (typeof element === 'object') {
            output.push(extract_even(element));
        } else if (element % 2 === 0) {
            output.push(element);
        }
    }
    return output.flat();
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
