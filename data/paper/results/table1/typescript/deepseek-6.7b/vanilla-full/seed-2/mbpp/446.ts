function count_Occurrence(tup: any, lst: any[]): number {
    let sum = 0;
    lst.forEach(element => {
        if (element.includes(tup)) {
            sum += element.filter(el => el === tup).length;
        }
    });
    return sum;
}

// Given an array of tuples and a list, this function counts the occurrence of each tuple in the list.
let tuples: any[] = ['a', 'b'];
let list: any[] = [['a', 'b'], ['a', 'a'], ['b', 'a']];

console.log(`Occurrence of ${tuples} in list: ${count_Occurrence(tuples, list)}`);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
