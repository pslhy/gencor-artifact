function count_Occurrence(tup: any, lst: any[]): number { 
    let ans = 0; 
    for (let i: number = 0; i < lst.length; i++) { 
        if (lst[i] === tup) 
            ans++; 
    } 
    return ans; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
