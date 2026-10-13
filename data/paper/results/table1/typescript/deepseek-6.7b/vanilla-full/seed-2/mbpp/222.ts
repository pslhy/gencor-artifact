function check_type(test_tuple: any): boolean {
    const type = typeof test_tuple[0];
    return test_tuple.slice(1).every(element => typeof element === type );
}

let test_tuple1 = [1, 2, 3, 4]; //true
let test_tuple2 = [1, '2', 3, 4]; //false

console.log(check_type(test_tuple1));
console.log(check_type(test_tuple2));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.
