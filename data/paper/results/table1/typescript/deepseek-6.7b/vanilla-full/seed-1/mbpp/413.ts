function extract_nth_element(list1: [string, number, number][], n: number): any[] {
    let res: any[] = [];
    for(let i = 0; i < list1.length; i++){
        if(list1[i].length > n)
            res.push(list1[i][n]);
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the nth element from a given array of arrays.
