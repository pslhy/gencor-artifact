
function noprofit_noloss(actual_cost: number, sale_amount: number): boolean {
    const profit = sale_amount - actual_cost;
    return profit === 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given amount has no profit and no loss
