function remove_odd(str1: string): string {
    let arr = Array.from(str1);
    let evenArr = arr.filter((_, index) => index % 2 === 0 );
    return evenArr.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove odd characters in a string.
