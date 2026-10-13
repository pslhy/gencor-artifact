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
        arr = [...arr, ...count_Occurrence(tuple, arr)];
    });
    return arr;
}

function count_Array(arr: any[]): [any, number][] {
    let tuples = tuples_to_list(arr);
    let counts: [any, number][] = [];

    tuples = Array.from(new Set(tuples)) as any;

    tuples.forEach((tuple) => {
        counts.push([tuple, count_Occurrence(tuple, arr)]);
    });

    return counts;
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
