function max_difference(test_list: [number, number][]): number {
    let curr_min: number = Infinity;
    let curr_max: number = -Infinity;

    for (let i = 0; i < test_list.length; i++) {
        if (test_list[i][0] > test_list[i][1]) {
            curr_max = Math.max(curr_max, test_list[i][0]);
            curr_min = Math.min(curr_min, test_list[i][1]);
        } else {
            curr_max = Math.max(curr_max, test_list[i][1]);
            curr_min = Math.min(curr_min, test_list[i][0]);
        }
    }

    return curr_max - curr_min;
}

let test_list: [number, number][] = [[1, 2], [2, 3], [3, 4], [4, 5], ];
console.log(max_difference(test_list));  // 4


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.
