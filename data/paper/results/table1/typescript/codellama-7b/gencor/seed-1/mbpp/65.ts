
function recursive_list_sum(data_list: (number | number[])[]): number {
    let acc: number = 0;
    data_list.forEach(element => acc += recursive_list_sum(element! as (number | number[])[]));
    if ((typeof data_list[0]) == 'number')
        acc += data_list[0] as number;
    console.log(acc)
    return acc;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
