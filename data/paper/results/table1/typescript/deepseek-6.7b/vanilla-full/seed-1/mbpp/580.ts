function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    let res: any = [];
    for (let i = 0; i < test_tuple.length; i++) {
        if (Array.isArray(test_tuple[i])) {
            res.push(extract_even(test_tuple[i] as [number, number, [number, number]]));
        } else if (test_tuple[i] % 2 === 0) {
            res.push(test_tuple[i]);
        }
    }
    return res;
}
console.log(extract_even([2, 1, [4, 1, [6, 7]], 5, 8])); // [2, 4, 6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
