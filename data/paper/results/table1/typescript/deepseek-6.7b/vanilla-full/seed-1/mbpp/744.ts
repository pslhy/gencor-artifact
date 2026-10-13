function check_none(test_tup: any): boolean {
    return (!test_tup.includes(undefined) && !test_tup.includes(null)) ? true : false
}

let arr = [1,2,3,null,5];
console.log(check_none(arr));  // Return false

let arr1 = [1,2,3,undefined,5];
console.log(check_none(arr1));  // Return false

let arr2 = [1,2,3,4,5];
console.log(check_none(arr2));  // Return true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array has any none value or not.
