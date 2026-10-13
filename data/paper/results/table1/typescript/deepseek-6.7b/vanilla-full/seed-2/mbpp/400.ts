function extract_freq(test_list: [number, number][]): number {
    let arr = {};
    for(let i=0; i<test_list.length; i++) {
        let key = test_list[i].join('');
        if (!arr[key]) {
            arr[key] = 1;
        } else {
            arr[key] += 1;
        }
    }
    let unique_count = 0;
    for(let key in arr) {
        unique_count++;
    }
    return unique_count;
}

console.log(extract_freq([[1, 2], [1, 2], [3, 4], [3, 5]])); // 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
