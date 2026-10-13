function text_match_zero_one(text: string): boolean {
    const pattern = /ab+/;
    return pattern.test(text);
}

console.log(text_match_zero_one('ac')); // false
console.log(text_match_zero_one('abc')); // true
console.log(text_match_zero_one('abbc')); // true
console.log(text_match_zero_one('a')); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/tsthon-exercises/re/tsthon-re-exercise-3.php
