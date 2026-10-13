function remove_length(test_str: string, K: number): string {
    let output = ""
    for (word of test_str.split(" ")) {
        if (word.length !== K) {
            output += word + " ";
        }
    }
    return output.trim();
}

// Example usage:
console.log(remove_length("Hello World, this is a test", 3)); // Output: Hello World, test


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all the words with k length in the given string.
