function max_product_tuple(list1: [number, number][]): number {
    let curr_max: number[] = [0, 0, 0];
    let curr_min: number[] = [0, 0, 0];

    for (let [a, b] of list1) {
        let prices = [a * b, a * curr_max[0], a * curr_max[1], a * curr_min[0], a * curr_min[1],
                      b * curr_max[0], b * curr_max[1], b * curr_min[0], b * curr_min[1]];

        curr_max = [Math.max(...prices), ...curr_max.slice(0, 1)];
        curr_min = [Math.min(...prices.filter(n => n < 0)), ...curr_min.slice(0, 1)];
    }

    return Math.max(...curr_max);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
