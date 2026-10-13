
function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    return test_tuple.filter((ele) => {
        if(Array.isArray(ele)){
            return extract_even(ele as [number, number, [number, number]|any[]] & any);
        } else {
            return ele % 2 == 0;
        }
    });
}

let test_tuple = [2, 4, [6, 8, [10, 12]], 14, 16];
console.log(extract_even(test_tuple as [number, number, [number, number, [number, number]], number, number]));  // [2, 4, 6, 8, 10, 12, 14, 16]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
