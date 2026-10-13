function loss_amount(actual_cost: number, sale_amount: number): number { 
    if (actual_cost > sale_amount) { 
        return actual_cost - sale_amount; 
    } else { 
        return 0; 
    } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that gives loss amount on a sale if the given amount has loss else return 0.