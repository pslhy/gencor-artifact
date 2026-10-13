function max_of_nth(test_list: number[][], N: number): number {
   if(test_list.length = 0){
     return -1;
   }
    let Columns:number[] = [];
    for (let i = 0; i < test_list.length; i++) {
        Columns.push(test_list[i][N]);
    }
    return Math.max(...Columns);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which given a matrix represented as an array of arrays returns the max of the n'th column.
