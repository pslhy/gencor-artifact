function flatten_list(list1: (number | number[])[]): number[] {
    let res: number[] = [];
    for (let i = 0; i < list1.length; i++){
        if(Array.isArray(list1[i]))
            res = res.concat(flatten_list(list1[i] as number[]));
        else
            res.push(list1[i] as number);
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.