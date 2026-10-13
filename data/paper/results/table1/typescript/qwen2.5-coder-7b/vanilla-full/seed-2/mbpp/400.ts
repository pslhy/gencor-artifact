function extract_freq(test_list: [number, number][]): number { 
    let res = [test_list[0]];
    for (let ele of test_list) { 
        if (res.filter(x => x[0] === ele[0] && x[1] === ele[1]).length === 0) { 
            res.push(ele); 
        } 
    } 
    return res.length; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
