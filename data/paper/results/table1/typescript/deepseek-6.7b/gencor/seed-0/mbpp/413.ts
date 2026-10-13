
function extract_nth_element(list1: [string, number, number][], n: number): any[] {
    let result = new Array<any>();
    for (let i=0; i<list1.length; i++) {
        result.push(list1[i][n]);
    }
    return result;
}

// test function
let arr = [[false, 12, 7], [true, 8, 5], [false, 5, 6]];
console.log(extract_nth_element(arr.slice(0,3) as [string, number, number][], 2));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the nth element from a given array of arrays.
