function check_dict_case(dict: {[key: string]: string}): boolean {
    if (Object.keys(dict).length === 0) return false;
    let allLower = Object.keys(dict).every(key => key === key.toLowerCase());
    let allUpper = Object.keys(dict).every(key => key === key.toUpperCase());
    return allLower || allUpper;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an object, return true if all keys are strings in lower
//     case or all keys are strings in upper case, else return false.
//     The function should return false is the given object is empty.
//     Examples:
//     >>> check_dict_case({"a": "apple", "b": "banana"})
//     true
//     >>> check_dict_case({"a": "apple", "A": "banana", "B": "banana"})
//     false
//     >>> check_dict_case({"a": "apple", 8: "banana", "a": "apple"})
//     false
//     >>> check_dict_case({"Name": "John", "Age": "36", "City": "Houston"})
//     false
//     >>> check_dict_case({"STATE": "NC", "ZIP": "12345"})
//     true
