function extract_freq(test_list: [number, number][]): number { 
    let res = 0; 
    let seen = new Set(); 
    for (let sub_arr of test_list) { 
        let sorted_arr = sub_arr.sort((a, b) => a - b); 
        let key = sorted_arr.join(','); 
        if (!seen.has(key)) { 
            seen.add(key); 
            res += 1; 
        } 
    } 
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
