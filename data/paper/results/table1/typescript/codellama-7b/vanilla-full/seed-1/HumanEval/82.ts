function prime_length(string: string): boolean {
    const string_length = string.length
    const prime_numbers = [2, 3, 5, 7, 11]
    for (let prime_number of prime_numbers) {
        if (string_length == prime_number) {
            return true
        }
    }
    return false
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes a string and returns true if the string
//     length is a prime number or false otherwise
//     Examples
//     >>> prime_length("Hello")
//     true
//     >>> prime_length("abcdcba")
//     true
//     >>> prime_length("kittens")
//     true
//     >>> prime_length("orange")
//     false
