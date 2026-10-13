function recursive_list_sum(data_list: (number | number[])[]): number {    
    let sum = 0;
    for (let numOrList of data_list) {
        if (Array.isArray(numOrList)) {
            sum += recursive_list_sum(numOrList);
        } else {
            sum += numOrList;
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
