function extract_nth_element(list1: [string, number, number][], n: number): any[] {
    let result = [];
    for(let i=0; i<list1.length; i++) {
        if(list1[i][n] !== undefined)
            result.push(list1[i][n])
    }
    return result;
}

let list1 = [["a", 1, 2], ["b", 2, 3], ["c", 3, 4]];

console.log(extract_nth_element(list1, 1)); // prints [1, 2, 3]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the nth element from a given array of arrays.
