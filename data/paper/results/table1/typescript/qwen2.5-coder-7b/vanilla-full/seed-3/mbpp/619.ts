function move_num(test_str: string): string {  
    let res_arr: string[] = [];
    let len = test_str.length;

    for (let i = 0; i < len; i++) {
        let ele = test_str[i];
        if (!isNaN(parseInt(ele))) res_arr.push(ele);
        else test_str += ele;
    }
    return test_str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
