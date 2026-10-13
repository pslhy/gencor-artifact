function recursive_list_sum(data_list: (number | number[])[]): number {
    let result = 0;
    for (const element of data_list) {
        if (element instanceof Array) {
            result += recursive_list_sum(element);
        } else {
            result += element;
        }
    }
    return result;
}

export default recursive_list_sum;


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
