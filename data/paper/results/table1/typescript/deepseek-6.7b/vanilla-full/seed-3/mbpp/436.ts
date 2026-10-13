function neg_nos(list1: number[]): number[] {
    let negList: number[] = [];
    for(let i of list1) {
        if(i < 0) {
            negList.push(i);
        }
    }
    return negList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to return the negative numbers in an array.
