function count_Occurrence(tup: any, lst: any[]): number {
    let sum = 0;
    lst.forEach(element => {
        if (element.toString() === tup.toString()) {
            sum += 1;
        }
    });
    return sum;
}

let arr: number[] = [2, 1, 2, 4, 3, 2, 1];
let tupleVar: number = 2;
let countVar = count_Occurrence([tupleVar], arr);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.