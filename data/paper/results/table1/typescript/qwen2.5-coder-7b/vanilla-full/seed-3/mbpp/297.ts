function flatten_list(list1: (number | number[])[]): number[] {  
    let list2: number[] = [];
    for(let item of list1) {
        if(Array.isArray(item)) {
            list2 = list2.concat(flatten_list(item));
        } else {
            list2.push(item);
        }
    }
    return list2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.
