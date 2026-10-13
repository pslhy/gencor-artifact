function count_bidirectional(test_list: [number, number][]): number { 
    let traversal_cost: { [key: string]: number } = {}; 
    for (let sub_arr of test_list) { 
        let sorted_pair = sub_arr.sort((a, b) => a - b).join('-'); 
        traversal_cost[sorted_pair] = (traversal_cost[sorted_pair] || 0) + 1; 
    } 
    return Object.values(traversal_cost).filter(count => count > 1).length; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.
