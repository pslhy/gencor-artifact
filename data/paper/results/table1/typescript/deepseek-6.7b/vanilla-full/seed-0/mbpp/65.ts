function recursive_list_sum(data_list: (number | number[])[]): number {
    let sum = 0;
    for (let i = 0; i < data_list.length; i++) {
        if (Array.isArray(data_list[i]))
            sum += recursive_list_sum(data_list[i]);
        else
            sum += data_list[i];
    }
    return sum;
}

const arr: (number | number[])[] = [1, 2, 3, [4, 5], 6, [7, [8, 9]]];
console.log(recursive_list_sum(arr));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
