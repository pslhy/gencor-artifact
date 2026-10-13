function check_value(dict: {[key: string]: number}, n: number): boolean {
    return Object.values(dict).every((value) => value === n)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all values are same in an object.
