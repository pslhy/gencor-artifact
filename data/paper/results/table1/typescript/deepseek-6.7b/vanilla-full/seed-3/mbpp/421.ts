function concatenate_tuple(test_tup: [string, string, number, string]): string {
    let str: string = "";
    for(let i: number = 0; i < test_tup.length; i++) {
        if(i !== 0) {
            str += ", ";
        }
        str += String(test_tup[i]);
    }
    return str;
}

let test_tup: [string, string, number, string] = ["John", "Doe", 30, "New York"];

console.log(concatenate_tuple(test_tup));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
