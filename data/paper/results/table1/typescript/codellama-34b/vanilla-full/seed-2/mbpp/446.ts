function count_Occurrence(tup: any, lst: any[]): number {
    let count = 0;
    for (const element of lst) {
        if (element === tup) {
            count++;
        }
    }
    return count;
}

function countAll(lst: any[]): number[] {
    const count: number[] = [];
    for (const element of lst) {
        count[element] = count_Occurrence(element, lst);
    }
    return count;
}

const lst = [1, 2, 3, 4, 2, 5, 3, 6, 4, 3, 7, 8, 9];
const count = countAll(lst);
console.log(count); // Output: [1, 2, 2, 1, 1, 2, 1, 1]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
