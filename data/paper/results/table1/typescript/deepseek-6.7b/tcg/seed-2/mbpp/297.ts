function flatten_list(list1: (number | number[])[]): number[] {
    let flatList: number[] = [];
    
    for (let i = 0; i < list1.length; i++) {
        if (Array.isArray(list1[i])) {
            flatList = [...flatList, ...flatten_list(list1[i] as number[])];
        } else {
            flatList.push(list1[i] as number);
        }
    }
    
    return flatList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.