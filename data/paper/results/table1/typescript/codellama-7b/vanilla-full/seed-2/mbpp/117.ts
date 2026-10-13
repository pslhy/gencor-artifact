function list_to_float(test_list: [string, string][]): [number, number][] {
    let output_list: [number, number][] = [];
    for (let element of test_list) {
        const x = parseFloat(element[0]);
        const y = parseFloat(element[1]);
        if (!isNaN(x) && !isNaN(y)) {
            output_list.push([x, y]);
        }
    }
    return output_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert all possible convertible elements in an array of arrays to floats.
