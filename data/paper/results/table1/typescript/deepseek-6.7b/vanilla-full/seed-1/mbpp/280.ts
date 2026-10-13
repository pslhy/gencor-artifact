function sequential_search(dlist: number[], item: number): [boolean, number] {
    for(let i = 0; i < dlist.length; i++) {
        if (dlist[i] === item) {
            return [true, i];
        }
    }
    return [false, -1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and element and returns an array containing a boolean that indicates if the element is in the array and the index position of the element (or -1 if the element is not found).
