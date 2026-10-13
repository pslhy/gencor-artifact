function list_to_float(test_list: [string, string][]): [number, number][] {
    const result = [];
    for (const [str1, str2] of test_list) {
        const num1 = parseFloat(str1);
        const num2 = parseFloat(str2);
        if (!isNaN(num1) && !isNaN(num2)) {
            result.push([num1, num2]);
        }
    }
    return result


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert all possible convertible elements in an array of arrays to floats.