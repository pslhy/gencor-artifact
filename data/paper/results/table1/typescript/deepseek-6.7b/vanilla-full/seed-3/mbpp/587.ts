function list_tuple(listx: number[]): any {
    let b = [];
    for (let i = 0; i < listx.length - 1; i++) {
        b.push([listx[i], listx[i + 1]]);
    }
    return b;
}

let array: number[] = [10, 20, 30, 40, 50];
console.log(list_tuple(array)); 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert an array to an array.
