function check_value(dict: {[key: string]: number}, n: number): boolean {
    for(let key in dict) {
        if(dict[key] !== n) {
            return false;
        }
    }
    return true;
}

let example = {key1: 5, key2: 5, key3: 5};
console.log(check_value(example, 5));  // This should print true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all values are same in an object.
