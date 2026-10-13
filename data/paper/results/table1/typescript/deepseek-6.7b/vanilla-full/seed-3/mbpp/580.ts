function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    let result: any = [];
    for(let i = 0; i < test_tuple.length; i++){
        if(typeof test_tuple[i] == "number" && test_tuple[i] % 2 == 0){
            result.push(test_tuple[i]);
        }
        else if(Array.isArray(test_tuple[i])){
            result = result.concat(extract_even(test_tuple[i] as [number, number, [number, number]]));
        }
    }
    return result;
}

const test_tuple: [number, number, [number, number, [number, number]], number, number] = [4, 3, [9, 6, [7, 2]], 8, 5];
console.log(extract_even(test_tuple));   // [4, 6, 2, 8]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
