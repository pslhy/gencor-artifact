function count_Occurrence(tup: any, lst: any[]): number {
    let count = 0;
    lst.forEach(element => {
        if(element === tup) {
            count++;
        }
    });
    return count;
}

let arr: number[] = [1, 2, 3, 2, 2, 4, 2, 5];
console.log(count_Occurrence(2, arr));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
