function extract_rear(test_tuple: [string, string, string]): string[] {
    return test_tuple.map(function(x) {
        return x.slice(-1)
    })
}

const sample_tuple: [string, string, string] = ['hello', 'world', 'hola'];
console.log(extract_rear(sample_tuple)) // Output: ['o', 'a', 'a']


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract only the rear index element of each string in the given array.
