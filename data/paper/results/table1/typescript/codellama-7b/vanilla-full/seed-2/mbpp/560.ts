function union_elements(test_tup1: number[], test_tup2: number[]): number[] {
    let result = test_tup1.concat(test_tup2);
    result.sort();
    let unique_elements: number[] = [];
    for (let element of result) {
        if (!unique_elements.includes(element)) {
            unique_elements.push(element);
        }
    }
    return unique_elements;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.
