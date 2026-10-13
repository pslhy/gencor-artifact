function tup_string(tup1: string[]): string {
    let str1 = "";
    for(let val of tup1){
        str1 = str1 + val + ",";
    }
    return str1.slice(0, -1);
}

let arr1: string[] = ['East','West','North','South'];
console.log(tup_string(arr1)); // "East,West,North,South"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert an array to a string.
