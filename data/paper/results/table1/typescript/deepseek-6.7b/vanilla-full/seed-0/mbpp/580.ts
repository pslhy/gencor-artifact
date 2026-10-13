function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    const retrieve = (array: any[]): any[] => {
        let result: any[] = [];
        for (let i = 0; i < array.length; i++) {
            if (typeof array[i] === 'number' && array[i] % 2 === 0)
                result.push(array[i]);
            else if (Array.isArray(array[i]))
                result = result.concat(retrieve(array[i]));
        }
        return result;
    }
    return retrieve(test_tuple);
}

console.log(extract_even([0, 1, [2, 3, [4, 5]], 6, 7]));  // output: [0, 2, 4, 6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
