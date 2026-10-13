function total_match(lst1: string[], lst2: string[]): string[] {
    let total1 = 0;
    let total2 = 0;

    for (let i = 0; i < lst1.length; i++) {
        total1 += lst1[i].length;
    }

    for (let i = 0; i < lst2.length; i++) {
        total2 += lst2[i].length;
    }

    if (total1 < total2) {
        return lst1;
    } else if (total1 > total2) {
        return lst2;
    } else {
        return lst1;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that accepts two arrays of strings and returns the array that has
//     total number of chars in the all strings of the array less than the other array.
//     if the two arrays have the same number of chars, return the first array.
//     Examples
//     >>> total_match([], [])
//     []
//     >>> total_match(["hi", "admin"], ["hI", "Hi"])
//     ["hI", "Hi"]
//     >>> total_match(["hi", "admin"], ["hi", "hi", "admin", "project"])
//     ["hi", "admin"]
//     >>> total_match(["hi", "admin"], ["hI", "hi", "hi"])
//     ["hI", "hi", "hi"]
//     >>> total_match(["4"], ["1", "2", "3", "4", "5"])
//     ["4"]
