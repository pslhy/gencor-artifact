function change_date_format(dt: string): string {
    let arr = dt.split('-');
    return arr[2] + '-' + arr[1] + '-' + arr[0];
}

let testDate = "2022-12-31";
console.log(change_date_format(testDate)); // Output: 31-12-2022


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.
