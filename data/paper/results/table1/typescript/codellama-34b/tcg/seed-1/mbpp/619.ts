function move_num(test_str: string): string {
    let str_arr = test_str.split("");
    let num_arr = str_arr.filter((element: string) => {
        return !isNaN(Number(element));
    });
    for (let i = 0; i < num_arr.length; i++) {
        str_arr.splice(str_arr.indexOf(num_arr[i]), 1);
    }
    return str_arr.join("") + num_arr.join("");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.