function Split(list: number[]): number[] {
    let oddList: number[] = [];
    for(let i of list){
        if(i % 2 !== 0){
            oddList.push(i);
        }
    }
    return oddList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of integers and only returns the odd ones.
