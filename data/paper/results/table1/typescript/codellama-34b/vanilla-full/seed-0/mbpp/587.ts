function list_tuple(listx: number[]): any {
    const tuple = Array(listx.length).fill(0);
    for (let i = 0; i < listx.length; i++) {
        tuple[i] = listx[i];
    }
    return tuple;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert an array to an array.
