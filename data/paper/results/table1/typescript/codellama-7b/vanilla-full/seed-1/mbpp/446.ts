function count_Occurrence(tup: any, lst: any[]): number {
    let count: number = 0;
    for(const elem of lst) {
        if(elem === tup) {
            count++;
        }
    }
    return count;
}

let tup: string = "apple";
let lst: string[] = ["apple", "banana", "orange", "mango", "apple"];

console.log(count_Occurrence(tup, lst));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
