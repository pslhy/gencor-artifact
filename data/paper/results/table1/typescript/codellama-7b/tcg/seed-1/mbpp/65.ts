function recursive_list_sum(data_list: (number | number[])[]): number {
    let acc: number = 0;
    data_list.forEach(element => acc += recursive_list_sum(element as (number | number[])[]));
    return acc;
}
function flatten_and_sum(data_list: (number | number[])[]): number {
    let flattened_list: (number | number[])[] = data_list.map(element => Array.isArray(element) ? element : [element]).reduce((prev_list: ((number | number[])[] | number | number[]), current_element: ((number | number[])[] | number | number[])) => {
        return prev_list.toString() === current_element.toString() ? prev_list : prev_list.toString() === "0" ? current_element : (prev_list as (number | number[])[]).concat(current_element as (number | number[])[])
    }, 0)
    .toString() === "0" ? [] : (flattened_list 
    : (number | number[])[])
    : (number | number[])[
    ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.