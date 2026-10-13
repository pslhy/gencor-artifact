function words_string(s: string): string[] {
    return s.replace(/[,]/g, "").split(/\s/)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You will be given a string of words separated by commas or spaces. Your task is
//     to split the string into words and return an array of the words.
//     For example:
//     >>> words_string("Hi, my name is John")
//     ["Hi", "my", "name", "is", "John"]
//     >>> words_string("One, two, three, four, five, six")
//     ["One", "two", "three", "four", "five", "six"]
