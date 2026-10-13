function list_to_float(test_list: [string, string][]): [number, number][] {
    let output: [number, number][] = [];
    for (let i = 0; i < test_list.length; i++) {
        let elem = test_list[i];
        if (parseInt(elem[0])) {
            output.push([parseFloat(elem[0]), parseFloat(elem[1])]);
        } else {
            output.push([elem[0], elem[1]] as [number, number]);
        }
    }
    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert all possible convertible elements in an array of arrays to floats.