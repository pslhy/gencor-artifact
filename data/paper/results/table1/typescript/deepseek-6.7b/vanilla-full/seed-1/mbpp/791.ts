function remove_nested(test_tup: any): [number, number, number, number] {
    return test_tup.filter((i: any) => !Array.isArray(i));
}

function remove_nested_arrays(array: any[]): any[] {
    let newArray = [...array];
    for (let i = 0; i < newArray.length; i++) {
        if (Array.isArray(newArray[i])) {
            newArray[i] = remove_nested_arrays(newArray[i]);
        } else if (Array.isArray(newArray[i])) {
            newArray = [ ...newArray.slice(0, i), ...remove_nested(newArray[i]), ...newArray.slice(i + 1)]
        }
    }
    return newArray;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
