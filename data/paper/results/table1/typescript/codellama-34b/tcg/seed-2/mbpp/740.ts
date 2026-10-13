function tuple_to_dict(test_tup: [number, number, number, number, number, number]): {[key: number]: number} {
    let output = [];
    for (let i = 0; i < test_tup[0].
    valueOf(); i++) {
        output[i] = test_tup[1].
    valueOf() + i;
    }
    return output.
    reduce((res: number, value: number) => {
        let key = value.toString();
        if (!res.hasOwnProperty(key)) {
            res.
    valueOf() + isNaN(parseInt(key))


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given array to a key-value object using adjacent elements. https://www.geeksforgeeks.org/tsthon-convert-array-to-adjacent-pair-object/