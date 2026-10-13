function recursive_list_sum(data_list: (number | number[])[]): number {
    let sum: number = 0;
    for (let i = 0; i < data_list.length; i++) {
        if (Array.isArray(data_list[i])) {
            sum += recursive_list_sum(data_list[i] as number[]);
        } else {
            sum += data_list[i] as number;
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