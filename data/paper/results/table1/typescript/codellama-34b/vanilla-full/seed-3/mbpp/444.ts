function trim_tuple(test_list: number[][], K: number): number[][] {
   if(test_list.length = 0){
     return [];
    }
    const result: number[][] = [];
    for(let i = 0; i < test_list.length; i++){
        const current = test_list[i];
        result.push(current.slice(K, current.length - K));
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to trim each array by k in the given arrays.
