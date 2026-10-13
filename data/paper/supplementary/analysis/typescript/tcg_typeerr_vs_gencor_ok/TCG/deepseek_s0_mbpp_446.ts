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
    let arr = [];
    tuples.forEach((tuple) => {
        arr = [...arr, ...count_Occurrence(tuple, arr) > 1 ? ['and', count_Occurrence(tuple, arr)] : tuple.toString().split(',').map(Number)]
    });
    return arr;
}

function count_tuples_in_list(tuples: any[], lst: any[]): any[] {
    let tupList = tuples_to_list(tuples);
    return tupList.map((tuple) => count_Occurrence(tuple, lst));
}

let tuples = [[1,2,3], [2,3], [1,2,3,4,5], [2]];
let list = [1,2,3,2,3,1,2,3,4,2,3,1];

// console.log(count_Occurrence(tuples[0], list));
// console.log(tuples_to_list(tuples));
// console.log(count_tuples_in_list(tuples, list))


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.