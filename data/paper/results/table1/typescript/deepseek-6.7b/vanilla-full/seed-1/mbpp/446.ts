function count_Occurrence(tup: any, lst: any[]): number {
    let count: {[key: string]: number} = {};
    lst.forEach(element => {
        if(tup.includes(element)) {
            count[element] = (count[element] || 0) + 1;
        }
    });
    
    return count[tup];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
