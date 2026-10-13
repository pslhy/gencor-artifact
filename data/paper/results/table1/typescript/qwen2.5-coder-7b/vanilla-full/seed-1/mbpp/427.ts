function change_date_format(dt: string): string { 
    let date_parts = dt.split('-'); 
    return date_parts[2] + '-' + date_parts[1] + '-' + date_parts[0]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.
