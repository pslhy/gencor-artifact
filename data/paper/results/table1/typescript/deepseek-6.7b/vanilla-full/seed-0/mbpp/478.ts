function remove_lowercase(str1: string): string {
    const splitstr = str1.split(/([A-Z0-9]{1})/g);
    return splitstr.filter(ele => ele.toUpperCase() === ele).join('');
}

console.log(remove_lowercase("helloHelloHELLO1234")); // HELLO1234


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove lowercase substrings from a given string.
