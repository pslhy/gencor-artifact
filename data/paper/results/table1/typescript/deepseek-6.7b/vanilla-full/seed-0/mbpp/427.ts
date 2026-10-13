function change_date_format(dt: string): string {
    const split = dt.split('-');
    return `${split[2]}-${split[1]}-${split[0]}`;
}

console.log(change_date_format("2022-05-12")); // output: 12-05-2022


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.
