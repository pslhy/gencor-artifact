
function count_Occurrence(tup: any, lst: any[]): number {
    let count = 0;
    lst.forEach((item) => {
        if (item == tup) {
            count++;
        }
    });
    return count;
}

function tuples_to_list(tuples: any[]): any[] {
    let arr = [] as any[];
    tuples.forEach((tup) => {
        arr = [...arr, ...Object.values(tup)];
    });
    return arr;
}

function count_Occurrences_In_Tuples(tuples: any[]): any {
    const list = tuples_to_list(tuples);
    const unique = [...new Set(list)];
    return unique.reduce((acc: any, el: any) => {
        acc[el] = count_Occurrence(el, list);
        return acc;
    }, {});
}

let tuples = [
    ['apple', 'banana', 'cherry'],
    ['apple', 'banana', 'cherry'],
    ['banana', 'apple', 'cherry'],
    ['apple', 'banana', 'banana'],
    ['cherry', 'banana', 'apple'],
];

console.log(count_Occurrences_In_Tuples(tuples));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
