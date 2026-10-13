function split_two_parts(list1: any[], L: number): any {
    let res: any[][] = [[], []];
    for(let i=0; i<L; i++) {
        res[0].push(list1[i]);
    }
    for(let j=L; j<list1.length; j++) {
        res[1].push(list1[j]);
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer L and splits the given array into two parts where the length of the first part of the array is L, and returns the resulting arrays in an array.
