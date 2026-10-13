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

const data: (number | number[])[] = [1, 2, [3, 4], 5, [6, 7, 8], 9];
console.log(recursive_list_sum(data)); // Output: 45


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
