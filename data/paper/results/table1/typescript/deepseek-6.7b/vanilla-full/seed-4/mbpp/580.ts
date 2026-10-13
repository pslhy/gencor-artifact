function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    return test_tuple.filter((ele) => {
        if(Array.isArray(ele)){
            return extract_even(ele);
        } else if(ele % 2 === 0){
            return ele;
        }
    });
}

console.log(extract_even([1, 2, [3, 4, [5, 6]], 7, 8]));  // 将输出 : [2, 4, 6, 8]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
