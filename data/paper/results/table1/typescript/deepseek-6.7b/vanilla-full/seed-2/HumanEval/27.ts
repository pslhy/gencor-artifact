function flip_case(string: string): string {
    let result = '';
    for(let i = 0; i < string.length; i++){
        if(string[i] === string[i].toUpperCase()){
            result += string[i].toLowerCase();
        } else {
            result += string[i].toUpperCase();
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
//     >>> flip_case("Hello")
//     "hELLO"
