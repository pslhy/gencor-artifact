function check_char(string: string): string {
    if(string.length < 2){
        return "No, it's not possible because the string is too short";
    }
    else if(string[0] === string[string.length - 1]){
        return "Yes, the first character and last character are same";
    }
    else{
        return "No, the first character and last character are different";
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given string starts and ends with the same character or not.
