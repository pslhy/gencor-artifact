function move_num(test_str: string): string {
    let num_str = "";
    let alpha_str = "";
    for(let i = 0; i < test_str.length; i++){
        if(!isNaN(parseInt(test_str[i]))){
            num_str += test_str[i];
        }
        else{
            alpha_str += test_str[i];
        }
    }
    return alpha_str + num_str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
