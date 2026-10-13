function check_value(dict: {[key: string]: number}, n: number): boolean {
    const values = Object.keys(dict).map((key) => dict[key]);
    return values.every((item) => item === n);
}

// Example usage:
const dict1 = 'a'
const dict2 = 'b'
const dict3 = 'c'

check_value(dict1.valueOf( ) == dict2.valueOf( ) && dict2.valueOf( ) == dict3.valueOf(


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all values are same in an object.