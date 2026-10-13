function move_num(test_str: string): string {
    let nums = '';
    let letters = '';

    for (let char of test_str){
        if (!isNaN(parseInt(char))){
            nums += char;
        } else {
            letters += char;
        } 
    }
    
    return letters + nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
