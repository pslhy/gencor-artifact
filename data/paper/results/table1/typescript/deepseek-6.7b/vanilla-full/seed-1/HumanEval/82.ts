function prime_length(string: string): boolean {
    const length: number = string.length;
    if (length < 2) {
        return false;
    }
    for(let i = 2, sqrt = Math.sqrt(length); i <= sqrt; i++) {
        if (length % i === 0) {
            return false;
        }
    }
    return true;
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
